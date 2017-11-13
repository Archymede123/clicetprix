Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

<ol class="carousel-indicators">
        <% @patient.images.each_with_index do |photo, n| %>
        <li data-target='#MyCarousel' data-slide-to="#{n}" class="#{'active' if n == 0}"></li>
        <% end %>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <%= image_tag @patient.images.first.image_file.url %>
        </div>
        <% @patient.images.drop(1).each do |photo| %>
          <div class="item">
          <%= image_tag photo.image_file.url %>
          </div>
        <% end %>
      </div>
