document.addEventListener("DOMContentLoaded", function () {
  fetch('/api/apartments')
    .then(response => response.json())
    .then(data => {
      const container = document.getElementById('apartments-container');
      data.forEach(apartment => {
        const col = document.createElement('div');
        col.className = 'col-md-4 mb-4';
        col.innerHTML = `
          <div class="card h-100">
            <img src="${apartment.imageUrl || '/img/placeholder.png'}" class="card-img-top" alt="${apartment.TITLE}">
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">${apartment.TITLE}</h5>
              <p class="card-text">${apartment.DESCRIPTION}</p>
              <p class="card-text"><strong>€${apartment.PRICEPERNIGHT} / night</strong></p>
              <a href="apartment.html?propertyId=${apartment.PROPERTYID}" class="btn btn-primary mt-auto">View details</a>
            </div>
          </div>
        `;
        container.appendChild(col);
      });
    })
    .catch(error => console.error('Greška pri dohvatanju apartmana:', error));
});
