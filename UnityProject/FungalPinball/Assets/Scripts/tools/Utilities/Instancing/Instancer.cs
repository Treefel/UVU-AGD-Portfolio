using UnityEngine;

//Use with the Coroutines behaviour

[CreateAssetMenu(menuName = "Utilities/InstanceObject")]
public class Instancer : ScriptableObject
{
    private Transform parentObj;
    public GameObject prefab;
    public IntData indexer;
    public void CreateInstance()
    {
        Instantiate(prefab);
    }
    public void SetParent(Transform parent)
    {
        parentObj = parent;
    }
    public void InstanceAddToParent(GameObject instance)
    {
        Instantiate(instance, parentObj);
    }
    public void InstanceFromV3Collection (Vector3DataCollection collection)
    {
        Instantiate(prefab, collection.vector3Datas[indexer.Value].value, Quaternion.identity);
    }
    public void InstanceFromV3 (Vector3Data collection)
    {
        Instantiate(prefab, collection.value, Quaternion.identity);
    }

    public void InstanceFromObject (Transform collection)
    {
        Instantiate(prefab, collection.position, Quaternion.identity);
    }

    public void SetPrefab(GameObject newObj)
    {
        prefab = newObj;
    }
    public void SetPrefabFromFirstList(GameObjectList newObj)
    {
        prefab = newObj.gameObjects[0];
    }
}