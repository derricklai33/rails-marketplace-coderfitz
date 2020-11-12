const sneakerDiv = `
<div class="sneaker-select">
  <label for="listing_title">Title</label>
  <select name="listing[title]" id="listing_title">
    <option value="adidas Yeezy 700 Mauve">adidas Yeezy 700 Mauve</option>
    <option value="adidas Yeezy 500 Salt">adidas Yeezy 500 Salt</option>
    <option value="adidas Yeezy 500 Blush">adidas Yeezy 500 Blush</option>
    <option value="adidas Yeezy 500 Stone">adidas Yeezy 500 Stone</option>
    <option value="adidas Yeezy QNTM Barium">adidas Yeezy QNTM Barium</option>
    <option value="adidas Yeezy Powerphase Calabasas Grey">
      adidas Yeezy Powerphase Calabasas Grey
    </option>
    <option value="adidas Yeezy 500 Utility Black">
      adidas Yeezy 500 Utility Black
    </option>
    <option value="adidas Yeezy 700 V2 Static">
      adidas Yeezy 700 V2 Static
    </option>
    <option value="adidas Yeezy Boost 350 Moonrock">
      adidas Yeezy Boost 350 Moonrock
    </option>
    <option value="adidas Yeezy Boost 350 Turtledove">
      adidas Yeezy Boost 350 Turtledove
    </option>
    <option value="adidas Yeezy Boost 950 Moonrock">
      adidas Yeezy Boost 950 Moonrock
    </option>
    <option value="adidas Yeezy Boost 950 Chocolate">
      adidas Yeezy Boost 950 Chocolate
    </option>
    <option value="adidas Yeezy Boost 950 Peyote">
      adidas Yeezy Boost 950 Peyote
    </option>
    <option value="adidas Yeezy 350 Cleat Turtledove">
      adidas Yeezy 350 Cleat Turtledove
    </option>
    <option value="adidas Yeezy Boost 700 Inertia">
      adidas Yeezy Boost 700 Inertia
    </option>
    <option value="adidas Yeezy 500 High Slate">
      adidas Yeezy 500 High Slate
    </option>
    <option value="adidas Yeezy 700 V3 Azael">adidas Yeezy 700 V3 Azael</option>
    <option value="adidas Yeezy Boost 700 Analog">
      adidas Yeezy Boost 700 Analog
    </option>
    <option value="adidas Yeezy Boost 700 Magnet">
      adidas Yeezy Boost 700 Magnet
    </option>
    <option value="adidas Yeezy Boost 700 Salt">
      adidas Yeezy Boost 700 Salt
    </option>
    <option value="adidas Yeezy Boost 380 Alien">
      adidas Yeezy Boost 380 Alien
    </option>
    <option value="adidas Yeezy 500 Soft Vision">
      adidas Yeezy 500 Soft Vision
    </option>
    <option value="adidas Yeezy Desert Boot Salt">
      adidas Yeezy Desert Boot Salt
    </option>
    <option value="adidas Yeezy Desert Boot Oil">
      adidas Yeezy Desert Boot Oil
    </option>
    <option value="adidas Yeezy 500 Bone White">
      adidas Yeezy 500 Bone White
    </option>
    <option value="adidas Yeezy Desert Boot Rock">
      adidas Yeezy Desert Boot Rock
    </option>
    <option value="adidas Yeezy Powerphase Simple Brown">
      adidas Yeezy Powerphase Simple Brown
    </option>
    <option value="adidas Yeezy Powerphase Quiet Grey">
      adidas Yeezy Powerphase Quiet Grey
    </option>
    <option value="adidas Yeezy Powerphase Clear Brown">
      adidas Yeezy Powerphase Clear Brown
    </option>
    <option value="adidas Yeezy QNTM Teal Blue">
      adidas Yeezy QNTM Teal Blue
    </option>
    <option value="adidas Yeezy Foam RNNR Ararat">
      adidas Yeezy Foam RNNR Ararat
    </option>
    <option value="adidas Yeezy 500 High Tyrian">
      adidas Yeezy 500 High Tyrian
    </option>
    <option value="adidas Yeezy Boost 380 Onyx">
      adidas Yeezy Boost 380 Onyx
    </option>
    <option value="adidas Yeezy 700 V3 Arzareth">
      adidas Yeezy 700 V3 Arzareth
    </option>
    <option value="adidas Yeezy Boost 380 Mist">
      adidas Yeezy Boost 380 Mist
    </option>
    <option value="adidas Yeezy 700 V3 Alvah">adidas Yeezy 700 V3 Alvah</option>
    <option value="adidas Yeezy QNTM (Lifestyle Model)">
      adidas Yeezy QNTM (Lifestyle Model)
    </option>
    <option value="adidas Yeezy Boost 380 Pepper">
      adidas Yeezy Boost 380 Pepper
    </option>
    <option value="adidas Yeezy 700 V3 Safflower">
      adidas Yeezy 700 V3 Safflower
    </option>
    <option value="adidas Yeezy Boost 350 V2 Zebra">
      adidas Yeezy Boost 350 V2 Zebra
    </option>
    <option value="adidas Yeezy Powerphase Calabasas Core White">
      adidas Yeezy Powerphase Calabasas Core White
    </option>
    <option value="adidas Yeezy Boost 350 V2 Sesame">
      adidas Yeezy Boost 350 V2 Sesame
    </option>
    <option value="adidas Yeezy Boost 350 V2 Butter">
      adidas Yeezy Boost 350 V2 Butter
    </option>
    <option value="adidas Yeezy Powerphase Calabasas Core Black">
      adidas Yeezy Powerphase Calabasas Core Black
    </option>
    <option value="adidas Yeezy 500 Super Moon Yellow">
      adidas Yeezy 500 Super Moon Yellow
    </option>
    <option value="adidas Yeezy Boost 750 Triple Black">
      adidas Yeezy Boost 750 Triple Black
    </option>
    <option value="adidas Yeezy Boost 350 Oxford Tan">
      adidas Yeezy Boost 350 Oxford Tan
    </option>
    <option value="adidas Yeezy Boost 950 Pirate Black">
      adidas Yeezy Boost 950 Pirate Black
    </option>
    <option value="adidas Yeezy Boost 380 Hylte Glow">
      adidas Yeezy Boost 380 Hylte Glow
    </option>
    <option value="adidas Yeezy Boost 350 V2 Beluga">
      adidas Yeezy Boost 350 V2 Beluga
    </option>
    <option value="Jordan 1 Retro High Dark Mocha">
      Jordan 1 Retro High Dark Mocha
    </option>
    <option value="Jordan 1 Mid Chicago Toe">Jordan 1 Mid Chicago Toe</option>
    <option value="Jordan 12 Retro Black Dark Concord">
      Jordan 12 Retro Black Dark Concord
    </option>
    <option value="Jordan 1 Retro High Tokyo Bio Hack">
      Jordan 1 Retro High Tokyo Bio Hack
    </option>
    <option value="Jordan 1 Retro High Light Smoke Grey">
      Jordan 1 Retro High Light Smoke Grey
    </option>
    <option value="Jordan 1 Mid Light Smoke Grey">
      Jordan 1 Mid Light Smoke Grey
    </option>
    <option value="Jordan 1 Retro High Royal Toe">
      Jordan 1 Retro High Royal Toe
    </option>
    <option value="Jordan 5 Retro Alternate Bel-Air">
      Jordan 5 Retro Alternate Bel-Air
    </option>
    <option value="Jordan 1 Retro High Court Purple White">
      Jordan 1 Retro High Court Purple White
    </option>
    <option value="Jordan 1 Retro High Pine Green Black">
      Jordan 1 Retro High Pine Green Black
    </option>
    <option value="Jordan 12 Retro Black University Gold">
      Jordan 12 Retro Black University Gold
    </option>
    <option value="Jordan 12 Retro Indigo">Jordan 12 Retro Indigo</option>
    <option value="Jordan 11 Retro Low Concord Bred">
      Jordan 11 Retro Low Concord Bred
    </option>
    <option value="Jordan 1 Retro High CO Japan Neutral Grey (2020)">
      Jordan 1 Retro High CO Japan Neutral Grey (2020)
    </option>
    <option value="Jordan 5 Retro Top 3">Jordan 5 Retro Top 3</option>
  </select>
  <br />
  <label for="listing_size">Size</label>
  <select name="listing[size]" id="listing_size">
    <option value="US5">US5</option>
    <option value="US6">US6</option>
    <option value="US7">US7</option>
    <option value="US8">US8</option>
    <option value="US9">US9</option>
    <option value="US10">US10</option>
    <option value="US11">US11</option>
    <option value="US12">US12</option>
    <option value="US13">US13</option>
  </select>
</div>
`;

export {
  sneakerDiv
}