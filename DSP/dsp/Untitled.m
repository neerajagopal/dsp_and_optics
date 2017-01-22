clear all;
close all;
x:0.1:1
Undefined function or variable 'x'.
 
x=0:0.1:1;
x

x =

  Columns 1 through 8

         0    0.1000    0.2000    0.3000    0.4000    0.5000    0.6000    0.7000

  Columns 9 through 11

    0.8000    0.9000    1.0000

x1=int8(x)

x1 =

    0    0    0    0    0    1    1    1    1    1    1

whos
  Name      Size            Bytes  Class     Attributes

  x         1x11               88  double              
  x1        1x11               11  int8                

%coverted to lesser memory

x

x =

  Columns 1 through 8

         0    0.1000    0.2000    0.3000    0.4000    0.5000    0.6000    0.7000

  Columns 9 through 11

    0.8000    0.9000    1.0000

%in an adc the easiest way to convert an analog signal is to multiply
x*10

ans =

  Columns 1 through 8

         0    1.0000    2.0000    3.0000    4.0000    5.0000    6.0000    7.0000

  Columns 9 through 11

    8.0000    9.0000   10.0000

int8(ans)

ans =

    0    1    2    3    4    5    6    7    8    9   10

%proper interger values
t=0:0.001:1;
y1=sin(2*pi*5*t);
plot(t,y1);
y1_f=fft(y1);
r=real(y1_f)

r =

  Columns 1 through 8

   -0.0000    0.0007    0.0030    0.0088    0.0278    7.8494   -0.0516   -0.0321

  Columns 9 through 16

   -0.0258   -0.0227   -0.0210   -0.0198   -0.0190   -0.0184   -0.0180   -0.0177

  Columns 17 through 24

   -0.0174   -0.0172   -0.0170   -0.0169   -0.0168   -0.0167   -0.0166   -0.0165

  Columns 25 through 32

   -0.0164   -0.0164   -0.0163   -0.0163   -0.0162   -0.0162   -0.0162   -0.0161

  Columns 33 through 40

   -0.0161   -0.0161   -0.0161   -0.0160   -0.0160   -0.0160   -0.0160   -0.0160

  Columns 41 through 48

   -0.0160   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159

  Columns 49 through 56

   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159   -0.0158   -0.0158   -0.0158

  Columns 57 through 64

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 65 through 72

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 73 through 80

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 81 through 88

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 89 through 96

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 97 through 104

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 105 through 112

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 113 through 120

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 121 through 128

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 129 through 136

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 137 through 144

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 145 through 152

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 153 through 160

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 161 through 168

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 169 through 176

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 177 through 184

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 185 through 192

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 193 through 200

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 201 through 208

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 209 through 216

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 217 through 224

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 225 through 232

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 233 through 240

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 241 through 248

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 249 through 256

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 257 through 264

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 265 through 272

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 273 through 280

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 281 through 288

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 289 through 296

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 297 through 304

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 305 through 312

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 313 through 320

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 321 through 328

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 329 through 336

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 337 through 344

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 345 through 352

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 353 through 360

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 361 through 368

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 369 through 376

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 377 through 384

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 385 through 392

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 393 through 400

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 401 through 408

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 409 through 416

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 417 through 424

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 425 through 432

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 433 through 440

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 441 through 448

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 449 through 456

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 457 through 464

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 465 through 472

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 473 through 480

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 481 through 488

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 489 through 496

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 497 through 504

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 505 through 512

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 513 through 520

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 521 through 528

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 529 through 536

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 537 through 544

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 545 through 552

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 553 through 560

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 561 through 568

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 569 through 576

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 577 through 584

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 585 through 592

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 593 through 600

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 601 through 608

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 609 through 616

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 617 through 624

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 625 through 632

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 633 through 640

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 641 through 648

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 649 through 656

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 657 through 664

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 665 through 672

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 673 through 680

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 681 through 688

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 689 through 696

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 697 through 704

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 705 through 712

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 713 through 720

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 721 through 728

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 729 through 736

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 737 through 744

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 745 through 752

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 753 through 760

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 761 through 768

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 769 through 776

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 777 through 784

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 785 through 792

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 793 through 800

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 801 through 808

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 809 through 816

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 817 through 824

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 825 through 832

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 833 through 840

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 841 through 848

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 849 through 856

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 857 through 864

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 865 through 872

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 873 through 880

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 881 through 888

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 889 through 896

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 897 through 904

   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157   -0.0157

  Columns 905 through 912

   -0.0157   -0.0157   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 913 through 920

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 921 through 928

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 929 through 936

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 937 through 944

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158

  Columns 945 through 952

   -0.0158   -0.0158   -0.0158   -0.0158   -0.0158   -0.0159   -0.0159   -0.0159

  Columns 953 through 960

   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159   -0.0159

  Columns 961 through 968

   -0.0159   -0.0160   -0.0160   -0.0160   -0.0160   -0.0160   -0.0160   -0.0161

  Columns 969 through 976

   -0.0161   -0.0161   -0.0161   -0.0162   -0.0162   -0.0162   -0.0163   -0.0163

  Columns 977 through 984

   -0.0164   -0.0164   -0.0165   -0.0166   -0.0167   -0.0168   -0.0169   -0.0170

  Columns 985 through 992

   -0.0172   -0.0174   -0.0177   -0.0180   -0.0184   -0.0190   -0.0198   -0.0210

  Columns 993 through 1000

   -0.0227   -0.0258   -0.0321   -0.0516    7.8494    0.0278    0.0088    0.0030

  Column 1001

    0.0007

whos
  Name      Size              Bytes  Class     Attributes

  ans       1x11                 11  int8                
  r         1x1001             8008  double              
  t         1x1001             8008  double              
  x         1x11                 88  double              
  x1        1x11                 11  int8                
  y1        1x1001             8008  double              
  y1_f      1x1001            16016  double    complex   

z=imag(y1_f);
whos
  Name      Size              Bytes  Class     Attributes

  ans       1x11                 11  int8                
  r         1x1001             8008  double              
  t         1x1001             8008  double              
  x         1x11                 88  double              
  x1        1x11                 11  int8                
  y1        1x1001             8008  double              
  y1_f      1x1001            16016  double    complex   
  z         1x1001             8008  double              

Y=abs(y1_f);
plot(Y);
%to scale and centre the plot, we use
plot(fftshift(Y));
f=linspace(-500,500,1000); %linerly spaces the plot
plot(f,fftshift(Y(1:1000)));
