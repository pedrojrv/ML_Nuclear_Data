function openpopbig(url){

      host=window.location.host.toLowerCase();
      
      if(host =="ndswebdev.iaea.org") host="iaeand";
      else
      if (  (host == "www-nds.iaea.org")
           ||(host == "amdu1.iaea.org")
           ||(host == "161.5.7.109")
           ||(host == "161.5.7.120")	     
           ||(host == "amdu1.iaea.or.at")
           ||(host == "www-nds.iaea.or.at")
           ||(host=="amdu1")
                              ) host="iaeand";
      else
      if (host == "www-nds.ipen.br") host="ipen";
      else
      if ( (host == "203.197.41.106")
           ||(host == "www-nds.indcentre.org.in")
         ) host="india";
      else host="local"

//      if(host!="local") url="../"+url;
      window.open(url,"pop", "toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=1,resizable=1,width=1000,height=800");
      }

function mylink(val0,val1,val2,val3,val4,val5,val6,val7,val8,val9,val10){
  this.val0=val0;
  this.val1=val1;
  this.val2=val2;
  this.val3=val3;
  this.val4=val4;
  this.val5=val5;
  this.val6=val6;
  this.val7=val7;
  this.val8=val8;
  this.val9=val9;
  this.val10=val10;
}

function output_mail(address,comment,subject){
  document.write('<a href="mailto:');
  document.write(address);
  document.write('?subject="');
  document.write(subject);
  document.write('">');
  document.write(comment);
  document.write('</a>');
}


function output_list(title,title0){
  var i;
  var ii,ll,aa;
  var arr=new Array();
  for (i=0,ii=0; i<title.length; i++) {
      if (title[i].val0=='0') continue;
      aa=new zlink3(title[i].val2,title[i].val1,title[i].val3);
      arr[ii++]=aa;
  }
  LLIINIT=100;
  outQuickPages(arr,arr.length,'Quick'+title0,title0,1);
}


function output_centre(title,title0){
  var i;
  document.write('<table width="100%" border="0" cellpadding="4" cellspacing="4" id="tab-color">');
  document.write('<thead>');
  document.write('<tr bgcolor="#ccffcc">');
  if (title0==1 || title0==2 || title0==0){
    document.write('<th width="10%">Country</th>');
  }
  document.write('<th>Centre</th>');
  if (title0==1 || title0==2 || title0==0){
    document.write('<th width="10%">Joined</th>');
  }
  if (title0==7 || title0==8 || title0==9){
    document.write('<th>URL</th>');
  }
  document.write('</tr>');
  document.write('</thead>');
  for (i=0; i<title.length; i++){
    if (title0==1 || title0==2 || title0==0){
      if (title[i].val0==title0){
        document.write('<tr bgcolor="#ccffff">');
        document.write('<td>'+title[i].val5+'</td>');
        document.write('<td><a href="'+title[i].val1+'">'+title[i].val3+'</a><br>'+title[i].val4+'</td>');
        document.write('<td align="center">'+title[i].val6+'</td>');
        document.write('</tr>');
        document.write('</tr>');
      }
    }
    if (title0==7 && title[i].val7!=0){
      document.write('<tr bgcolor="#ffffcc">');
      document.write('<td>'+title[i].val2+'</td>');
      document.write('<td><a href="'+title[i].val7+'">'+title[i].val7+'</a>'+'</td>');
      document.write('</tr>');
    }
    if (title0==8 && title[i].val8!=0){
      document.write('<tr bgcolor="#ffffcc">');
      document.write('<td>'+title[i].val2+'</td>');
      document.write('<td><a href="'+title[i].val8+'">'+title[i].val8+'</a>'+'</td>');
      document.write('</tr>');
    }
    if (title0==9 && title[i].val9!=0){
      if (title[i].val10!=0){
        document.write('<tr bgcolor="#ffffcc">');
        document.write('<td>'+title[i].val2+'</td>');
        document.write('<td><a href="'+title[i].val9+'">'+title[i].val9+'</a>'+'<br>');
        document.write('    <a href="'+title[i].val10+'">'+title[i].val10+'</a>'+' (ftp)</td>');
        document.write('</tr>');
      }else{
        document.write('<tr bgcolor="#ffffcc">');
        document.write('<td>'+title[i].val2+'</td>');
        document.write('<td><a href="'+title[i].val9+'">'+title[i].val9+'</a>'+'</td>');
        document.write('</tr>');
      }
    }
  }
  document.write('</table>');
  document.close();
}
