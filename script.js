const featuredProduct = [
    {
      id: 1,
      name: "HP 62 Black Ink Cartridge",
      model: "(HPC2P04AE)",
      image: "Printer.jpeg",
    },
    {
      id: 2,
      name: "Canon PIXMA MG3620",
      model: "(MG3620)",
      image: "Printer.jpeg",
    },
    {
      id: 3,
      name: "Epson EcoTank ET-2720",
      model: "(ET-2720)",
      image: "Printer.jpeg",
    },
    {
      id: 4,
      name: "Brother HL-L2350DW",
      model: "(HL-L2350DW)",
      image: "Printer.jpeg",
    },
    {
      id: 5,
      name: "HP OfficeJet 3830",
      model: "(OfficeJet 3830)",
      image: "Printer.jpeg",
    },
];

  
  const featuredProductCard = document.getElementById("swiper-wrapper");
  
  featuredProductCard.innerHTML = `${featuredProduct
    .map(
      product => `
      <div class="swiper-slide"><div class="card">
              <img src=${product.image} alt=${product.name}>
              <div class="body-card">
                  <h4>${product.name}</h4>
                  <p>${product.model}</p>
                  <div class="footer-card">
                      <p class="price">$9.49</p>
                      <button>ADD TO CART</button>
                  </div>
              </div>
          </div></div>`
    )
    .join("")}`;
  
    document.addEventListener("DOMContentLoaded", function () {
        const swiper = new Swiper(".swiper-container", {
            slidesPerView: "auto",
            spaceBetween: 20,
            autoplay: {
                delay: 5000, 
                disableOnInteraction: false, 
            },
            effect: "slide", 
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            breakpoints: {
                768: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 40,
                },
            },
        });
    });
    