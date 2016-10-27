//°Ñ”µ×Ö×Ö·û´®ÞD“Q³Éint”µ½M
int[] specificationAttributeOptionList = null;

if (!string.IsNullOrEmpty(AttributeValueIds))
{
	var ids = AttributeValueIds.Split(',');

	specificationAttributeOptionList = Array.ConvertAll(ids, Convert.ToInt32);
}
