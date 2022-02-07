<h2>Hotel overzicht</h2>
<div class="search">
    <form method="post">
    <input
        type="text"
        name="search"
        placeholder="Zoek naar hotels"
        value="<?= $_POST['search'] ?? '' ?>">
    <input type="submit" value="Zoeken">
</form>
</div>
<div class="hotels">
    <?php if (empty($data['hotels'])): ?>
        <p class="no-results">Er zijn geen hotels gevonden</p>
    <?php else: ?>
        <?php foreach ($data['hotels'] as $hotel): ?>
            <a class="hotel" href="<?= site_url('hotel/details/' . esc($hotel['id'])) ?>" class="hotel">
                <div class="hotel-inner">
                    <h2><?= esc($hotel['name']) ?></h2>
                    <?= esc($hotel['address']) ?>
                    <br>
                    <?= esc($hotel['zip_code']) ?> <?= esc($hotel['city']) ?>
                    <br>
                    <?= esc($hotel['province']) ?>
                    <br><br>
                    t: <?= esc($hotel['phone']) ?>
                    <br>
                    e: <span class="break-all"><?= esc($hotel['email']) ?></span>
                </div>
            </a>
        <?php endforeach; ?>
    <?php endif; ?>
</div>