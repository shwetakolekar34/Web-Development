let cart = [];

function addToCart(name, price) {
    cart.push({ name, price });
    updateCart();
}

function updateCart() {
    const cartItems = $('#cartItems');
    const total = $('#total');
    cartItems.empty();
    let sum = 0;

    cart.forEach((item, index) => {
        cartItems.append(`
            <li class="list-group-item d-flex justify-content-between align-items-center">
                ${item.name} - ₹${item.price}
                <button class="btn btn-danger btn-sm" onclick="removeItem(${index})">Remove</button>
            </li>
        `);
        sum += item.price;
    });

    total.text(sum);
}

function removeItem(index) {
    cart.splice(index, 1);
    updateCart();
}

function checkout() {
    if (cart.length === 0) {
        alert("Your cart is empty!");
    } else {
        alert("Thank you for your order! 🎉 Total: ₹" + $('#total').text());
        cart = [];
        updateCart();
    }
}