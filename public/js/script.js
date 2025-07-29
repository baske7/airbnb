document.addEventListener("DOMContentLoaded", () => {
  let minusButton = document.getElementById("minusButton");
  let plusButton = document.getElementById("plusButton");
  let numberDisplay = document.getElementById("numberOfGuests");
  let guestMax = document.getElementById("maxGuests");
  minusButton.addEventListener("click", () => {
    let numberOfGuests = parseInt(numberDisplay.value);
    if (numberOfGuests > 0) {
      numberOfGuests--;
      numberDisplay.value = numberOfGuests;
    }
    if (numberOfGuests < 20) {
      guestMax.style.display = "none";
    }
  });

  plusButton.addEventListener("click", () => {
    let numberOfGuests = parseInt(numberDisplay.value);
    if (numberOfGuests < 20) {
      numberOfGuests++;
      numberDisplay.value = numberOfGuests;
    }
    if (numberOfGuests === 20) {
      guestMax.style.display = "inline";
      guestMax.innerText = 'This is the maximum number of guests';
    } 
  });
});


function checkDate(event) {
  event.preventDefault();
  let checkIn = new Date(document.getElementById("checkIn").value);
  let checkOut = new Date(document.getElementById("checkOut").value);
  let today = new Date();
  today.setHours(0, 0, 0, 0);

  let checkInError = document.getElementById("checkInError");
  let checkOutError = document.getElementById("checkOutError");

  let isValid = true;

  if (checkIn < today) {
    checkInError.innerHTML = "Please select a date that is from today and onwards.";
    checkInError.style.display = "inline";
    isValid = false;
  } else {
    checkInError.style.display = "none";
  }

  if (checkOut < today) {
    checkOutError.innerHTML = "Please select a date that is from today and onwards.";
    checkOutError.style.display = "inline";
    isValid = false;
  } else {
    checkOutError.style.display = "none";
  }

  if (checkIn >= checkOut) {
    checkOutError.innerHTML = "Please adjust your dates. Check-out must be after check-in.";
    checkOutError.style.display = "inline";
    isValid = false;
  }

  return isValid;
}
