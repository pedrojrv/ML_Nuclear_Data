import numpy as np
import os
import plotly.graph_objects as go

def plotly_ml_results(results_dict, order_dict={}, save_dir='', save=False, render_browser=False, show=False, paper=False, html=False):
    fig = go.Figure()
    
    if len(order_dict) == 0:
        order_dict = {"1":"endf", "4":"exfor_ml_original", "3":"exfor_ml", "2":"exfor_new"}
    
    exfor_original_trace = go.Scattergl(
        x=results_dict["exfor_ml_original"]['df']["Energy"], 
        y=results_dict["exfor_ml_original"]['df']["Data"],
        mode='markers', name='EXFOR')
    
    if "exfor_ml_expanded" in results_dict.keys():
        exfor_ml_trace = go.Scattergl(
            x=results_dict["exfor_ml_expanded"]['df']["Energy"], 
            y=results_dict["exfor_ml_expanded"]['predictions'].flatten(),
            mode='lines', name='ML')
    else:
        exfor_ml_trace = go.Scattergl(
            x=results_dict["exfor_ml_original"]['df']["Energy"], 
            y=results_dict["exfor_ml_original"]['predictions'].flatten(),
            mode='lines', name='ML')
        
    if "endf" in results_dict.keys():
        endf_trace = go.Scattergl(
            x=results_dict["endf"].Energy, 
            y=results_dict["endf"].Data,
            mode='lines', name='ENDF')

    if "exfor_ml_new" in results_dict.keys():    
        exfor_ml_new_trace = go.Scattergl(x=results_dict["exfor_ml_new"]["df"].Energy, 
                                          y=results_dict["exfor_ml_new"]["df"].Data,
                            mode='markers', name='ML New')

        
    for i in np.arange(1, len(order_dict) + 1):
        for plot_order, name in order_dict.items():
            if plot_order == str(i):
                if name == "endf":
                    if "endf" in results_dict.keys():
                        fig.add_trace(endf_trace)
                elif name == "exfor_ml_original":
                    fig.add_trace(exfor_original_trace)
                elif name == "exfor_ml":
                    fig.add_trace(exfor_ml_trace)
                elif name == "exfor_new":
                    if "exfor_ml_new" in results_dict.keys():
                        fig.add_trace(exfor_ml_new_trace)
        
        
    fig.update_layout(template="simple_white")

    if show:
        if paper:
            fig.update_layout(height=600, width=700)
            fig.update_layout(legend=dict(x=0.8, y=1))
        if render_browser:
            fig.show(renderer="browser")
        else:
            fig.show()
        if save:
            fig.write_image(save_dir)
        if html:
            fig.write_html(os.path.splitext(save_dir)[0] + '.html')

    return fig