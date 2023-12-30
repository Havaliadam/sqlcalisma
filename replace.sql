use veriler 

select*from Test


select*,REPLICATE('0',8-len(SÝRANO))+CONVERT(varchar,SÝRANO) FROM Test
UPDATE Test SET  SÝRANO=REPLICATE('0',8-len(SÝRANO2))+CONVERT(varchar,SÝRANO2) FROM Test
--REPLACE 
SELECT 'AYHAN ÇELÝK'
SELECT REPLACE('AYHANN ÇELÝK','AYHAN','AYHAN DEMÝR')

DECLARE @CUMLE AS VARCHAR(MAX)
SET @CUMLE='Paragraf, herhangi bir yazýnýn bir satýr baþýndan öteki satýr baþýna kadar olan bölümüne denir. Daha geniþ bir ifadeyle, paragraf "bir duyguyu, bir düþünceyi, bir isteði, bir durumu, bir öneriyi, olayýn bir yönünü, yalnýzca bir yönüyle anlatým tekniklerin­den ve düþünceyi geliþtirme yollarýndan yararlanarak anlatan yazý türüdür. Kelimeler cümleleri, cümleler paragraflarý, paragraflar da yazýlarý oluþturur. Paragraf bir yazýnýn küçültülmüþ bir örneðidir. Bu yönüyle yapý bakýmýndan bir yazýya benzer.'


SET @CUMLE=REPLACE(@CUMLE,'Paragraf','bir')

SELECT @CUMLE

