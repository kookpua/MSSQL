//�є����ַ����D�Q��int���M
int[] specificationAttributeOptionList = null;

if (!string.IsNullOrEmpty(AttributeValueIds))
{
	var ids = AttributeValueIds.Split(',');

	specificationAttributeOptionList = Array.ConvertAll(ids, Convert.ToInt32);
}
