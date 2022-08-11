select ma_khach_hang,ho_ten,dia_chi,ngay_sinh
from khach_hang
where(  
(dia_chi regexp 'Quảng trị$' 
 or dia_chi regexp 'Đà Nẵng$') 
 and (round(datediff(curdate(),ngay_sinh)/365,0) <=50 
and round(datediff(curdate(),ngay_sinh)/365,0) >=18 ))
;