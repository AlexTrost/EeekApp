<div class="authform">
  <%= form_for(user, :as => user, :url => password_path(user), :html => { :method => :put }) do |f| %>
    <h3>Change your password</h3>
    <%= devise_error_messages! %>
    <%= f.hidden_field :reset_password_token %>
    <div class="form-group">
      <%= f.label :password, 'New password' %>
        <%= f.password_field :password, autofocus: true, autocomplete: 'off', class: 'form-control' %>
      <%= f.label :password_confirmation, 'Confirm new password' %>
        <%= f.password_field :password_confirmation, autocomplete: 'off', class: 'form-control' %>
    </div>
     <%= f.submit 'Change my Password', :class => 'button right' %>
  <% end %>
</div>