use veriler 

select*from Test


select*,REPLICATE('0',8-len(S�RANO))+CONVERT(varchar,S�RANO) FROM Test
UPDATE Test SET  S�RANO=REPLICATE('0',8-len(S�RANO2))+CONVERT(varchar,S�RANO2) FROM Test
--REPLACE 
SELECT 'AYHAN �EL�K'
SELECT REPLACE('AYHANN �EL�K','AYHAN','AYHAN DEM�R')

DECLARE @CUMLE AS VARCHAR(MAX)
SET @CUMLE='Paragraf, herhangi bir yaz�n�n bir sat�r ba��ndan �teki sat�r ba��na kadar olan b�l�m�ne denir. Daha geni� bir ifadeyle, paragraf "bir duyguyu, bir d���nceyi, bir iste�i, bir durumu, bir �neriyi, olay�n bir y�n�n�, yaln�zca bir y�n�yle anlat�m tekniklerin�den ve d���nceyi geli�tirme yollar�ndan yararlanarak anlatan yaz� t�r�d�r. Kelimeler c�mleleri, c�mleler paragraflar�, paragraflar da yaz�lar� olu�turur. Paragraf bir yaz�n�n k���lt�lm�� bir �rne�idir. Bu y�n�yle yap� bak�m�ndan bir yaz�ya benzer.'


SET @CUMLE=REPLACE(@CUMLE,'Paragraf','bir')

SELECT @CUMLE

