Reading writing multiplying addding subtracting 64bit integers bigint long long                                
                                                                                                               
No need for DS2?. DS2 cannot read or write a file.                                                             
                                                                                                               
R has difficulty reading and writing bigint. R can do the operations internally, like DS2?                     
                                                                                                               
Less is more.                                                                                                  
                                                                                                               
Note the macro language is not that slow.  

github                                                                                                                  
http://tinyurl.com/y2wtmtdz                                                                                             
https://github.com/rogerjdeangelis/utl-reading-writing-multiplying-addding-subtracting_64bit-integers-bigint-long-long  
                                                                                                                                                                                                                                      
*_                   _                                                                                         
(_)_ __  _ __  _   _| |_                                                                                       
| | '_ \| '_ \| | | | __|                                                                                      
| | | | | |_) | |_| | |_                                                                                       
|_|_| |_| .__/ \__,_|\__|                                                                                      
        |_|                                                                                                    
;                                                                                                              
                                                                                                               
filename ft15f001 "d:/txt/bigintInpx.txt";                                                                     
parmcards4;                                                                                                    
2305843009213693952                                                                                            
1152921504606846976                                                                                            
288230376151711744                                                                                             
;;;;                                                                                                           
run;quit;                                                                                                      
                                                                                                               
 d:/txt/bigintInpx.txt                                                                                         
                                                                                                               
  2305843009213693952                                                                                          
  1152921504606846976                                                                                          
  288230376151711744                                                                                           
                                                                                                               
*            _               _                                                                                 
  ___  _   _| |_ _ __  _   _| |_                                                                               
 / _ \| | | | __| '_ \| | | | __|                                                                              
| (_) | |_| | |_| |_) | |_| | |_                                                                               
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                              
                |_|                                                                                            
;                                                                                                              
                                                                                                               
 d:/txt/bigintOutx.txt                                                                                         
                                                                                                               
multiply int 2305843009213693952 by  2 = 4611686018427387904                                                   
division int 2305843009213693952 by  2 = 1152921504606846976                                                   
subracts int 1152921504606846976       = 1152921504606846976                                                   
addition int 1152921504606846976       = 3458764513820540928                                                   
                                                                                                               
multiply int 1152921504606846976 by  2 = 2305843009213693952                                                   
division int 1152921504606846976 by  2 = 576460752303423488                                                    
subracts int 1152921504606846976       = 0                                                                     
addition int 1152921504606846976       = 2305843009213693952                                                   
                                                                                                               
multiply int 288230376151711744 by  2  = 576460752303423488                                                    
division int 288230376151711744 by  2  = 144115188075855872                                                    
subracts int 1152921504606846976       = -864691128455135232                                                   
addition int 1152921504606846976       = 1441151880758558720                                                   
                                                                                                               
*          _       _   _                                                                                       
 ___  ___ | |_   _| |_(_) ___  _ __                                                                            
/ __|/ _ \| | | | | __| |/ _ \| '_ \                                                                           
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                          
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                          
                                                                                                               
;                                                                                                              
                                                                                                               
filename inp "d:/txt/bigintInpx.txt";                                                                          
filename out "d:/txt/bigintOutx.txt";                                                                          
%macro readwrite;                                                                                              
   %let fin=%sysfunc(fopen(inp,s));                                                                            
   %let fot=%sysfunc(fopen(out,o,144,v));                                                                      
   %if (&fin ^= 0) and (&fot ^= 0) %then %do;                                                                  
       %do %while(%sysfunc(fread(&fin)) eq 0);                                                                 
           %let rc=%sysfunc(fget(&fin,str,19));                                                                
           %let operator=multiply int &str by  2 = %eval(2*&str);;                                             
           %let rc=%sysfunc(fput(&fot,&operator));                                                             
           %let rc=%sysfunc(fwrite(&fot));                                                                     
           %put &=operator;                                                                                    
           %let operator=division int &str by  2 = %eval(&str./2);;                                            
           %let rc=%sysfunc(fput(&fot,&operator));                                                             
           %let rc=%sysfunc(fwrite(&fot));                                                                     
           %put &=operator;                                                                                    
           %let operator=subracts int 1152921504606846976 = %eval(&str. -1152921504606846976);                 
           %let rc=%sysfunc(fput(&fot,&operator));                                                             
           %let rc=%sysfunc(fwrite(&fot));                                                                     
           %put &=operator;                                                                                    
           %let operator=addition int 1152921504606846976 = %eval(&str. +1152921504606846976);                 
           %let rc=%sysfunc(fput(&fot,&operator));                                                             
           %let rc=%sysfunc(fwrite(&fot));                                                                     
           %put &=operator;                                                                                    
       %end;                                                                                                   
   %end;                                                                                                       
   %let rc=%sysfunc(fclose(&fin));                                                                             
   %let rc=%sysfunc(fclose(&fot));                                                                             
 %mend readwrite;                                                                                              
 %readwrite;                                                                                                   
                                                                                                               
                                                                                                               
*_                                                                                                             
| | ___   __ _                                                                                                 
| |/ _ \ / _` |                                                                                                
| | (_) | (_| |                                                                                                
|_|\___/ \__, |                                                                                                
         |___/                                                                                                 
;                                                                                                              
                                                                                                               
NOTE: AUTOEXEC processing completed.                                                                           
                                                                                                               
1          filename inp "d:/txt/bigintInpx.txt";                                                               
2          filename out "d:/txt/bigintOutx.txt";                                                               
3          %macro readwrite;                                                                                   
4             %let fin=%sysfunc(fopen(inp,s));                                                                 
5             %let fot=%sysfunc(fopen(out,o,144,v));                                                           
6             %if (&fin ^= 0) and (&fot ^= 0) %then %do;                                                       
7                 %do %while(%sysfunc(fread(&fin)) eq 0);                                                      
8                     %let rc=%sysfunc(fget(&fin,str,19));                                                     
9                     %let operator=multiply int &str by  2 = %eval(2*&str);;                                  
10                    %let rc=%sysfunc(fput(&fot,&operator));                                                  
11                    %let rc=%sysfunc(fwrite(&fot));                                                          
12                    %put &=operator;                                                                         
13                    %let operator=division int &str by  2 = %eval(&str./2);;                                 
14                    %let rc=%sysfunc(fput(&fot,&operator));                                                  
15                    %let rc=%sysfunc(fwrite(&fot));                                                          
16                    %put &=operator;                                                                         
17                    %let operator=subracts int 1152921504606846976 = %eval(&str. -1152921504606846976);      
18                    %let rc=%sysfunc(fput(&fot,&operator));                                                  
19                    %let rc=%sysfunc(fwrite(&fot));                                                          
20                    %put &=operator;                                                                         
21                    %let operator=addition int 1152921504606846976 = %eval(&str. +1152921504606846976);      
22                    %let rc=%sysfunc(fput(&fot,&operator));                                                  
23                    %let rc=%sysfunc(fwrite(&fot));                                                          
24                    %put &=operator;                                                                         
25                %end;                                                                                        
26            %end;                                                                                            
27            %let rc=%sysfunc(fclose(&fin));                                                                  
28            %let rc=%sysfunc(fclose(&fot));                                                                  
29          %mend readwrite;                                                                                   
30          %readwrite;                                                                                        
OPERATOR=multiply int 2305843009213693952 by  2 = 4611686018427387904                                          
OPERATOR=division int 2305843009213693952 by  2 = 1152921504606846976                                          
                                                                                                               
The SAS System                                                                                                 
                                                                                                               
OPERATOR=subracts int 1152921504606846976 = 1152921504606846976                                                
OPERATOR=addition int 1152921504606846976 = 3458764513820540928                                                
OPERATOR=multiply int 1152921504606846976 by  2 = 2305843009213693952                                          
OPERATOR=division int 1152921504606846976 by  2 = 576460752303423488                                           
OPERATOR=subracts int 1152921504606846976 = 0                                                                  
OPERATOR=addition int 1152921504606846976 = 2305843009213693952                                                
OPERATOR=multiply int 288230376151711744 by  2 = 576460752303423488                                            
OPERATOR=division int 288230376151711744 by  2 = 144115188075855872                                            
OPERATOR=subracts int 1152921504606846976 = -864691128455135232                                                
OPERATOR=addition int 1152921504606846976 = 1441151880758558720                                                
                                                                                                               
NOTE: SAS Institute Inc., SAS Campus Drive, Cary, NC USA 27513-2414                                            
NOTE: The SAS System used:                                                                                     
      real time           0.60 seconds                                                                         
      cpu time            0.42 seconds                                                                         
                                                                                                               
                                                                                                               
