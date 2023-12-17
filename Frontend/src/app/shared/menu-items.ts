import { Injectable } from "@angular/core";

export interface Menu {
    state: string;
    name: string;
    type: string;
    icon: string;
    role: string;
}

const MENUITEMS = [
    { state: 'dashboard', name: 'Dashboard (Thống kê)', type: 'link', icon: 'dashboard', role: '' },
    { state: 'category', name: 'Manage Category (Quản lý danh mục)', type: 'link', icon: 'category', role: 'admin' },
    { state: 'product', name: 'Manage Product (Quản lý sản phẩm / món ăn)', type: 'link', icon: 'inventory_2', role: 'admin' },
    { state: 'order', name: 'Manage Order (Quản lý đặt hàng)', type: 'link', icon: 'shopping_cart', role: '' },
    { state: 'bill', name: 'View bill (Hoá đơn)', type: 'link', icon: 'backup_table', role: '' },
    { state: 'user', name: 'Manage User (Quản lý người dùng)', type: 'link', icon: 'people', role: 'admin' }
]

@Injectable()
export class MenuItems {
    getMenuitem(): Menu[] {
        return MENUITEMS;
    }
}