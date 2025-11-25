using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Collections/TransformDataList")]
public class TransformCollection : ScriptableObject
{
 public List<Transform> transformDatas;
    public int index;
    
    public void RandomizeIndex()
    {
        index = Random.Range(0, transformDatas.Count - 1);
    }
    
    public void ClearList()
    {
        transformDatas.Clear();
    }
}
