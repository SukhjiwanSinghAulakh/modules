vnet_peering = {
  peer1to2 = {
    name                              = "peer1to2"
    resource_group_name               = "rg-terraform-morning"
    virtual_network_name              = "vnet1"
    remote_virtual_network_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning2/providers/Microsoft.Network/virtualNetworks/vnet2"
    }
  peer2to1 = {
    name                              = "peer2to1"
    resource_group_name               = "rg-terraform-morning2"
    virtual_network_name              = "vnet2"
    remote_virtual_network_id = "/subscriptions/5763111c-28fc-4a01-97e4-3b5805a10876/resourceGroups/rg-terraform-morning/providers/Microsoft.Network/virtualNetworks/vnet1"
    // to get remote virtual network ID- az network vnet list  --query "[].{Name:name,ID:id}"   -o table 
    }
}
