<div class="hotel-details">
    <h2><?= esc($data['hotel']['name']) ?></h1>

    <h3>Gegevens</h3>
    <?= esc($data['hotel']['address']) ?>
    <br>
    <?= esc($data['hotel']['zip_code']) ?> <?= esc($data['hotel']['city']) ?>
    <br>
    <?= esc($data['hotel']['province']) ?>
    <br><br>
    t: <?= esc($data['hotel']['phone']) ?>
    <br>
    e: <?= esc($data['hotel']['email']) ?>

    <h3>Stel uw vraag aan <?= esc($data['hotel']['name']) ?></h3>
    <form method="post" class="form-container">
        <div class="form-item w-33">
            <label for="firstname">Voornaam<small>*</small></label>
            <input type="text" name="firstname" id="firstname" required>
        </div>

        <div class="form-item w-33">
            <label for="insertion">Tussenvoegsel</label>
            <input type="text" name="insertion" id="insertion">
        </div>

        <div class="form-item w-33">
            <label for="lastname">Achternaam<small>*</small></label>
            <input type="text" name="lastname" id="lastname" required>
        </div>

        <div class="form-item w-50">
            <label for="email">E-mailadres<small>*</small></label>
            <input type="email" name="email" id="email" required>
        </div>

        <div class="form-item w-50">
            <label for="phone">Telefoonnummer</label>
            <input type="tel" name="phone" id="phone">
        </div>

        <div class="form-item w-100">
            <label for="question">Stel uw vraag</label>
            <textarea name="question" id="question" cols="30" rows="10"></textarea>
        </div>

        <div class="form-item">
            <input type="submit" value="Verzenden">
        </div>
    </form>

    <?php if(isset($data['mailsent'])): ?>
        <div class="success">Bedankt! Je vraag is verstuurd. We nemen zo snel mogelijk contact met je op.</div>
    <?php endif; ?>
</div>

