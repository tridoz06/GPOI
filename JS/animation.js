document.addEventListener("DOMContentLoaded", () => {
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add("visible");
            } else {
                entry.target.classList.remove("visible");
            }
        });
    }, {
        threshold: 0.01// Trigger quando il 10% dell'elemento è visibile
    });

    // Osserva tutti gli elementi con le classi specificate
    document.querySelectorAll('.text.left, .image.right, .text.right, .image.left').forEach((el) => observer.observe(el));
});
