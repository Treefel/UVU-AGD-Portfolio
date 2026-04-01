using UnityEngine;
using UnityEngine.Events;
using System.Linq;

public class InventoryConfigBehaviour : MonoBehaviour
{
    public UnityEvent buttonEvent;
    public InventoryData inventoryDataObj;
    public InventoryUIButtonBehaviour inventoryUIPrefab;

    private void Start()
    {
        buttonEvent.Invoke();
    }
    
    public void AddAllInventoryItemsToUI()
    {
        int i = 0;
        foreach (var item in inventoryDataObj.inventoryDataObjList)
        {
            // if (item is not { UsedOrPurchase: true }) continue;
            var element = Instantiate(inventoryUIPrefab.gameObject, transform);
            var elementData = element.GetComponent<InventoryUIButtonBehaviour>();
            if(elementData != null)
            {
                elementData.ConfigButton(item);
            }
            else Debug.Log("element data is null");
        }
    }

    public void AddAllStoreInventoryItemsToUI()
    {
        int i = 0;
        foreach (var item in inventoryDataObj.storeDataObjList)
        {
            var element = Instantiate(inventoryUIPrefab.gameObject, transform);
            var elementData = element.GetComponent<StoreUIButtonBehaviour>();
            if(elementData != null)
            {
                elementData.ConfigButton(item);
            }
            else Debug.Log("element data is null");
        }
    }
    public void AddRandomStoreInventoryItemsToUI(int number)
    {
        for (int i = 0; i < number; i++)
        {
            var item = inventoryDataObj.storeDataObjList[Random.Range(0, inventoryDataObj.storeDataObjList.Count)];
            var element = Instantiate(inventoryUIPrefab.gameObject, transform);
            var elementData = element.GetComponent<StoreUIButtonBehaviour>();
            if(elementData != null)
            {
                elementData.ConfigButton(item);
            }
            else Debug.Log("element data is null");
        }
    }

    public void AddRandomInventoryItemsToUI(int number)
    {
        int[] used = new int[] {};
        for (int i = 0; i < number; i++)
        {
            int index = Random.Range(0, inventoryDataObj.inventoryDataObjList.Count);
            if (used.Contains(index))
            {
                Debug.Log("already added it");
                i-=1;
                continue;
            }
            var item = inventoryDataObj.inventoryDataObjList[index];
            var element = Instantiate(inventoryUIPrefab.gameObject, transform);
            var elementData = element.GetComponent<InventoryUIButtonBehaviour>();
            if(elementData != null)
            {
                elementData.ConfigButton(item);
                // inventoryDataObj.inventory[index].ConfigRaise();
            }
            else Debug.Log("element data is null");
        }
    }

    // public void AddNumberOfInventoryItemsToUI(int number)
    // {
    //     int i = 0;
    //     foreach (var item in inventoryDataObj.inventoryDataObjList)
    //     {
    //         if (i > number) break;
    //         if (item is not { UsedOrPurchase: true }) continue;
    //         var element = Instantiate(inventoryUIPrefab.gameObject, transform);
    //         var elementData = element.GetComponent<InventoryUIButtonBehaviour>();
    //         elementData.ConfigButton(item);
    //         i++;
    //     }
    // }

    public void AddPurchasedInventoryItemsPrefabsToScene()
    {
        var i = 0;
        foreach (var item in inventoryDataObj.storeDataObjList)
        {
            if (!item.UsedOrPurchase || item is not IInventoryItem storeItem ) continue;
            if (storeItem.GameActionObj == null || storeItem.GameArt == null);
            var element = Instantiate(storeItem.GameArt, transform);
            var elementData = element.GetComponent<InventoryPrefabItemBehaviour>();
            elementData.ConfigureGameObject(storeItem, i++);
        }
    }
}