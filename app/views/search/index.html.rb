<p><%= will_paginate @links %></p>

Here are all the links that matched "<%= params[:q] %>"
<ul>
  <% @links.each do |link| %>
    <li>
      Votes: <%= link.votes.where(:up => true).count - link.votes.where(:up => false).count %>

      <% if current_user && current_user.votes.where(:link_id => link.id, :up => true).present? %>
      *
      <% else %>
        <%= link_to "+", votes_path(:vote => {:link_id => link.id, :up => true}), :method => :post %>
      <% end %>


      <% if current_user && current_user.votes.where(:link_id => link.id, :up => false).present? %>
        *
      <% else %>
          <%= link_to "-", votes_path(:vote => {:link_id => link.id, :up => false}), :method => :post %>
      <% end %>

      <%= link_to link.title, link.url %>
      <%= link_to "comments", link %>
    </li>
  <% end %>
</ul>