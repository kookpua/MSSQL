 //修改編碼重新提交
//把數字字符串轉換成int數組
int[] specificationAttributeOptionList = null;

if (!string.IsNullOrEmpty(AttributeValueIds))
{
	var ids = AttributeValueIds.Split(',');

	specificationAttributeOptionList = Array.ConvertAll(ids, Convert.ToInt32);
}
