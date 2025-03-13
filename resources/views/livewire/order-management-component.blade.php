<div>
    <!-- order history table -->

    <div class="com_card mx-2">
        <h3 class="com_card_title mb-3">All Orders</h3>

        <div class="table-responsive">
          <table class="data-table">
            <thead>
              <tr>
                <th>Order ID</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Price Per Item</th>
                <th>Total Price</th>
                <th>User</th>
                <th>Status</th>
                <th>Action</th>
              </tr>
            </thead>

            <tbody>
                @foreach ($orders as $order)

                <tr>

                    <td>{{ $order->id }}</td>

                    <td>{{ $order->product->title }}</td>

                    <td>{{ $order->quantity }}</td>

                    <td>${{ number_format($order->price_per_item, 2) }}</td>

                    <td>${{ number_format($order->total_price, 2) }}</td>

                    <td>{{ $order->user->name }}</td>

                    <td>{{ $order->status }}</td>

                    <td>

                        <button wire:click="approveOrder({{ $order->id }})"class="btn btn-primary">Approve</button>

                        <button wire:click="cancelOrder({{ $order->id }})" class="btn btn-danger">Cancel</button>

                    </td>

                </tr>

            @endforeach
            </tbody>
          </table>
        </div>
      </div>
</div>
