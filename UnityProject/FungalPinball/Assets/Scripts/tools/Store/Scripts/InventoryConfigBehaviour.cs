using UnityEngine;
using UnityEngine.Events;
using System.Linq;
using System.Diagnostics;
using System.Collections.Generic;

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
            else UnityEngine.Debug.Log("element data is null");
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
            else UnityEngine.Debug.Log("element data is null");
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
            else UnityEngine.Debug.Log("element data is null");
        }
    }

    public void AddRandomInventoryItemsToUI(int number)
    {
        HashSet<int> used = new HashSet<int>();
        if (number > inventoryDataObj.inventoryDataObjList.Count)
        {
            AddAllInventoryItemsToUI();
            return;
        }
        while (used.Count < number)
        {
            int index = Random.Range(0, inventoryDataObj.inventoryDataObjList.Count);
            used.Add(index);
        }
        foreach (int i in used)
        {
            
            var item = inventoryDataObj.inventoryDataObjList[i];
            var element = Instantiate(inventoryUIPrefab.gameObject, transform);
            var elementData = element.GetComponent<InventoryUIButtonBehaviour>();
            if(elementData != null)
            {
                UnityEngine.Debug.Log("configuring button with item: " + item.ThisName);
                elementData.ConfigButton(item);
                
                // inventoryDataObj.inventory[index].ConfigRaise();
            }
            else UnityEngine.Debug.Log("element data is null");
            
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