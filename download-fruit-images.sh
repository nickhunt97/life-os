#!/usr/bin/env bash
# Downloads the 148 devil fruit images AND their character portraits into the repo.
# Run once from the root of your life-os repo:   bash download-fruit-images.sh
set -euo pipefail
mkdir -p fruits fruits/characters
fail=0
while IFS="|" read -r slug fruit person; do
  for pair in "fruits/$slug.webp|$fruit" "fruits/characters/$slug.webp|$person"; do
    out="${pair%%|*}"; url="${pair#*|}"
    [ -s "$out" ] && continue
    if curl -fsSL --retry 3 --max-time 30 "$url" -o "$out"; then printf "."
    else printf "\nFAILED %s\n" "$out"; fail=$((fail+1)); fi
  done
done <<'LIST'
berry-berry-fruit|https://cd-opf.pages.dev/fruits/6a3ec262-9076-470a-ab62-f9fa857793b3.webp|https://cd-opf.pages.dev/characters/6a3ec262-9076-470a-ab62-f9fa857793b3.webp
cook-cook-fruit|https://cd-opf.pages.dev/fruits/3a970a68-15dd-456c-98df-6d4ec2effad7.webp|https://cd-opf.pages.dev/characters/3a970a68-15dd-456c-98df-6d4ec2effad7.webp
lick-lick-fruit|https://cd-opf.pages.dev/fruits/5eaf9ec7-2079-4ec3-8f31-3b6b37dc037a.webp|https://cd-opf.pages.dev/characters/5eaf9ec7-2079-4ec3-8f31-3b6b37dc037a.webp
puff-puff-fruit|https://cd-opf.pages.dev/fruits/04586c2e-4407-46d1-986b-96b38a2fe264.webp|https://cd-opf.pages.dev/characters/04586c2e-4407-46d1-986b-96b38a2fe264.webp
whisper-whisper-fruit|https://cd-opf.pages.dev/fruits/d2a7f4b9-8e13-4c60-b5a2-1f9c3e7d6a48.webp|https://cd-opf.pages.dev/characters/d2a7f4b9-8e13-4c60-b5a2-1f9c3e7d6a48.webp
sickle-sickle-fruit|https://cd-opf.pages.dev/fruits/9e2a4f6b-1d8c-4a3e-b7f5-6c8d1a9e3f2b.webp|https://cd-opf.pages.dev/characters/9e2a4f6b-1d8c-4a3e-b7f5-6c8d1a9e3f2b.webp
butter-butter-fruit|https://cd-opf.pages.dev/fruits/af3cce82-03b5-47b5-8943-a5e8ac5f69e3.webp|https://cd-opf.pages.dev/characters/af3cce82-03b5-47b5-8943-a5e8ac5f69e3.webp
jacket-jacket-fruit|https://cd-opf.pages.dev/fruits/306f5af1-9c4d-4c3f-88c2-79dec50f93c9.webp|https://cd-opf.pages.dev/characters/306f5af1-9c4d-4c3f-88c2-79dec50f93c9.webp
millet-millet-fruit|https://cd-opf.pages.dev/fruits/0254da49-ff50-432d-97b2-1cebb7dcaa9e.webp|https://cd-opf.pages.dev/characters/0254da49-ff50-432d-97b2-1cebb7dcaa9e.webp
smooth-smooth-fruit|https://cd-opf.pages.dev/fruits/85cbd3c9-dd95-44a5-9a44-970919c80ef4.webp|https://cd-opf.pages.dev/characters/85cbd3c9-dd95-44a5-9a44-970919c80ef4.webp
tweet-tweet-fruit|https://cd-opf.pages.dev/fruits/f4b17f70-5793-469e-b8b5-7426dd80ff1b.webp|https://cd-opf.pages.dev/characters/f4b17f70-5793-469e-b8b5-7426dd80ff1b.webp
twinkle-twinkle-fruit|https://cd-opf.pages.dev/fruits/5f07dd73-36ad-40f5-b38b-488d55a53908.webp|https://cd-opf.pages.dev/characters/5f07dd73-36ad-40f5-b38b-488d55a53908.webp
brush-brush-fruit|https://cd-opf.pages.dev/fruits/fe1e3ad4-2a92-422a-84e6-f4754aeacc51.webp|https://cd-opf.pages.dev/characters/fe1e3ad4-2a92-422a-84e6-f4754aeacc51.webp
calm-calm-fruit|https://cd-opf.pages.dev/fruits/704c8868-a280-4015-8c9e-a1314ce55518.webp|https://cd-opf.pages.dev/characters/704c8868-a280-4015-8c9e-a1314ce55518.webp
egg-egg-fruit|https://cd-opf.pages.dev/fruits/5214641d-1bbf-4440-b3ce-7c85d1e758aa.webp|https://cd-opf.pages.dev/characters/5214641d-1bbf-4440-b3ce-7c85d1e758aa.webp
garb-garb-fruit|https://cd-opf.pages.dev/fruits/2d65532f-1068-4d5c-ba8a-a4babdd27ec0.webp|https://cd-opf.pages.dev/characters/2d65532f-1068-4d5c-ba8a-a4babdd27ec0.webp
glare-glare-fruit|https://cd-opf.pages.dev/fruits/f174fa3c-6486-49e0-9650-d19692fc15c1.webp|https://cd-opf.pages.dev/characters/f174fa3c-6486-49e0-9650-d19692fc15c1.webp
mark-mark-fruit|https://cd-opf.pages.dev/fruits/58b34368-c259-4b42-9a18-f3387b440e08.webp|https://cd-opf.pages.dev/characters/58b34368-c259-4b42-9a18-f3387b440e08.webp
pile-pile-fruit|https://cd-opf.pages.dev/fruits/0cb67738-3d08-4038-9895-37701cafab51.webp|https://cd-opf.pages.dev/characters/0cb67738-3d08-4038-9895-37701cafab51.webp
pump-pump-fruit|https://cd-opf.pages.dev/fruits/446ad5e8-ae7c-4f9d-b6a8-44d4f7e88ff1.webp|https://cd-opf.pages.dev/characters/446ad5e8-ae7c-4f9d-b6a8-44d4f7e88ff1.webp
horse-horse-fruit|https://cd-opf.pages.dev/fruits/e8f68a37-2da5-4660-b0cf-67dee06b1983.webp|https://cd-opf.pages.dev/characters/e8f68a37-2da5-4660-b0cf-67dee06b1983.webp
mini-mini-fruit|https://cd-opf.pages.dev/fruits/8380b385-072f-442f-9432-aacc3e164c52.webp|https://cd-opf.pages.dev/characters/8380b385-072f-442f-9432-aacc3e164c52.webp
stick-stick-fruit|https://cd-opf.pages.dev/fruits/d8443a3c-1413-4c59-8f49-fd379307f774.webp|https://cd-opf.pages.dev/characters/d8443a3c-1413-4c59-8f49-fd379307f774.webp
snip-snip-fruit|https://cd-opf.pages.dev/fruits/bdd6eafe-3186-4448-b32d-1a2a8ac4f7f0.webp|https://cd-opf.pages.dev/characters/bdd6eafe-3186-4448-b32d-1a2a8ac4f7f0.webp
art-art-fruit|https://cd-opf.pages.dev/fruits/5e9f6018-f711-4f0e-8a8d-f10924a7f2f9.webp|https://cd-opf.pages.dev/characters/5e9f6018-f711-4f0e-8a8d-f10924a7f2f9.webp
dog-dog-fruit-model-tanuki|https://cd-opf.pages.dev/fruits/4144b2d1-c577-473f-b61c-2daec88aac73.webp|https://cd-opf.pages.dev/characters/4144b2d1-c577-473f-b61c-2daec88aac73.webp
human-human-fruit|https://cd-opf.pages.dev/fruits/187e7b71-39b6-491a-b052-90ac350a2643.webp|https://cd-opf.pages.dev/characters/187e7b71-39b6-491a-b052-90ac350a2643.webp
sew-sew-fruit|https://cd-opf.pages.dev/fruits/7ec9e5ec-8b23-482d-9e15-2712445622ba.webp|https://cd-opf.pages.dev/characters/7ec9e5ec-8b23-482d-9e15-2712445622ba.webp
wash-wash-fruit|https://cd-opf.pages.dev/fruits/48dfcd51-08fd-45ea-b5d7-33912aac00bd.webp|https://cd-opf.pages.dev/characters/48dfcd51-08fd-45ea-b5d7-33912aac00bd.webp
wring-wring-fruit|https://cd-opf.pages.dev/fruits/874f56a5-ca00-46ac-9458-c6339c41c459.webp|https://cd-opf.pages.dev/characters/874f56a5-ca00-46ac-9458-c6339c41c459.webp
tone-tone-fruit|https://cd-opf.pages.dev/fruits/c462d6ed-9894-40f6-baaf-97fbf26df2b6.webp|https://cd-opf.pages.dev/characters/c462d6ed-9894-40f6-baaf-97fbf26df2b6.webp
bubble-bubble-fruit|https://cd-opf.pages.dev/fruits/4a4af37d-bd12-4366-9f51-a4cfb7cef101.webp|https://cd-opf.pages.dev/characters/4a4af37d-bd12-4366-9f51-a4cfb7cef101.webp
cream-cream-fruit|https://cd-opf.pages.dev/fruits/1b73363a-5490-4abc-aa86-e528a3f10d23.webp|https://cd-opf.pages.dev/characters/1b73363a-5490-4abc-aa86-e528a3f10d23.webp
mutt-mutt-fruit|https://cd-opf.pages.dev/fruits/68f5d3b9-6c32-4e54-bdb0-a14a59467942.webp|https://cd-opf.pages.dev/characters/68f5d3b9-6c32-4e54-bdb0-a14a59467942.webp
ripe-ripe-fruit|https://cd-opf.pages.dev/fruits/25c7ba78-4e3c-40f1-9bef-2b9e2af8dbd4.webp|https://cd-opf.pages.dev/characters/25c7ba78-4e3c-40f1-9bef-2b9e2af8dbd4.webp
ripple-ripple-fruit|https://cd-opf.pages.dev/fruits/ad19a434-a616-477f-8e7f-b6296acb276d.webp|https://cd-opf.pages.dev/characters/ad19a434-a616-477f-8e7f-b6296acb276d.webp
pop-pop-fruit|https://cd-opf.pages.dev/fruits/f112d87f-4810-4c75-9d5d-a88f60f8bd74.webp|https://cd-opf.pages.dev/characters/f112d87f-4810-4c75-9d5d-a88f60f8bd74.webp
bind-bind-fruit|https://cd-opf.pages.dev/fruits/b0c79594-e20a-4fc7-990e-f8d11d64473c.webp|https://cd-opf.pages.dev/characters/b0c79594-e20a-4fc7-990e-f8d11d64473c.webp
bird-bird-fruit-model-albatross|https://cd-opf.pages.dev/fruits/1a96a89c-39dd-4076-a4a7-d72fbf90dd43.webp|https://cd-opf.pages.dev/characters/1a96a89c-39dd-4076-a4a7-d72fbf90dd43.webp
clone-clone-fruit|https://cd-opf.pages.dev/fruits/1c853f73-073f-4bae-be90-901ce31c9ca5.webp|https://cd-opf.pages.dev/characters/1c853f73-073f-4bae-be90-901ce31c9ca5.webp
kilo-kilo-fruit|https://cd-opf.pages.dev/fruits/52eb0032-1919-4198-9da8-54df0eb61804.webp|https://cd-opf.pages.dev/characters/52eb0032-1919-4198-9da8-54df0eb61804.webp
mole-mole-fruit|https://cd-opf.pages.dev/fruits/2e586e6d-aa53-4600-8210-aba727e82b7a.webp|https://cd-opf.pages.dev/characters/2e586e6d-aa53-4600-8210-aba727e82b7a.webp
rust-rust-fruit|https://cd-opf.pages.dev/fruits/43dfb53e-510b-48eb-aa9e-77bbc03e0e0a.webp|https://cd-opf.pages.dev/characters/43dfb53e-510b-48eb-aa9e-77bbc03e0e0a.webp
soot-soot-fruit|https://cd-opf.pages.dev/fruits/47f53322-9283-429e-8410-9c303159c041.webp|https://cd-opf.pages.dev/characters/47f53322-9283-429e-8410-9c303159c041.webp
spin-spin-fruit|https://cd-opf.pages.dev/fruits/f608df14-a72e-4292-83c0-30b7a90cdd60.webp|https://cd-opf.pages.dev/characters/f608df14-a72e-4292-83c0-30b7a90cdd60.webp
straw-straw-fruit|https://cd-opf.pages.dev/fruits/7bb1c20b-fe30-4344-822c-0aa016408bce.webp|https://cd-opf.pages.dev/characters/7bb1c20b-fe30-4344-822c-0aa016408bce.webp
roll-roll-fruit|https://cd-opf.pages.dev/fruits/a1e5c9d2-4b7f-4e1a-9c6d-2f8b5a3e7d4c.webp|https://cd-opf.pages.dev/characters/a1e5c9d2-4b7f-4e1a-9c6d-2f8b5a3e7d4c.webp
sala-sala-fruit-axolotl-model|https://cd-opf.pages.dev/fruits/a3f1c892-d47e-4b2a-91f3-7e5d60a8bc14.webp|https://cd-opf.pages.dev/characters/a3f1c892-d47e-4b2a-91f3-7e5d60a8bc14.webp
wheel-wheel-fruit|https://cd-opf.pages.dev/fruits/d16638d1-7d68-488c-8fef-07b8b14d6869.webp|https://cd-opf.pages.dev/characters/d16638d1-7d68-488c-8fef-07b8b14d6869.webp
scroll-scroll-jutsu|https://cd-opf.pages.dev/fruits/c73a54d2-4024-41ac-a2ce-e178901daec7.webp|https://cd-opf.pages.dev/characters/c73a54d2-4024-41ac-a2ce-e178901daec7.webp
arms-arms-fruit|https://cd-opf.pages.dev/fruits/a7bc5584-ca5e-48aa-8fef-ab6dedb935da.webp|https://cd-opf.pages.dev/characters/a7bc5584-ca5e-48aa-8fef-ab6dedb935da.webp
ox-ox-fruit|https://cd-opf.pages.dev/fruits/f87f2740-cfbe-4d48-b399-e2fbf9f405f9.webp|https://cd-opf.pages.dev/characters/f87f2740-cfbe-4d48-b399-e2fbf9f405f9.webp
turtle-turtle-fruit|https://cd-opf.pages.dev/fruits/291a5934-0eab-4691-9fd8-a64b41624c09.webp|https://cd-opf.pages.dev/characters/291a5934-0eab-4691-9fd8-a64b41624c09.webp
vision-vision-fruit|https://cd-opf.pages.dev/fruits/3d7f8a1c-6e2b-4c9d-a5f1-8b3e6c9d2f4a.webp|https://cd-opf.pages.dev/characters/3d7f8a1c-6e2b-4c9d-a5f1-8b3e6c9d2f4a.webp
dice-dice-fruit|https://cd-opf.pages.dev/fruits/42b0f3ff-8dea-4a66-bcff-d4801f87a60e.webp|https://cd-opf.pages.dev/characters/42b0f3ff-8dea-4a66-bcff-d4801f87a60e.webp
push-push-fruit|https://cd-opf.pages.dev/fruits/a1fdacfb-3924-4aeb-b973-819207bed1b8.webp|https://cd-opf.pages.dev/characters/a1fdacfb-3924-4aeb-b973-819207bed1b8.webp
spring-spring-fruit|https://cd-opf.pages.dev/fruits/5f0e9472-ea27-4a59-a343-6196a352c27d.webp|https://cd-opf.pages.dev/characters/5f0e9472-ea27-4a59-a343-6196a352c27d.webp
chop-chop-fruit|https://cd-opf.pages.dev/fruits/db872681-57fc-40e0-9666-beea21ba23a5.webp|https://cd-opf.pages.dev/characters/db872681-57fc-40e0-9666-beea21ba23a5.webp
spike-spike-fruit|https://cd-opf.pages.dev/fruits/b7a64514-0ee0-4cae-8905-71db75fd23f9.webp|https://cd-opf.pages.dev/characters/b7a64514-0ee0-4cae-8905-71db75fd23f9.webp
bomb-bomb-fruit|https://cd-opf.pages.dev/fruits/82bb0e96-11f4-41ab-bcc3-766e449b7903.webp|https://cd-opf.pages.dev/characters/82bb0e96-11f4-41ab-bcc3-766e449b7903.webp
bug-bug-fruit-model-hornet|https://cd-opf.pages.dev/fruits/9a29b4d8-d5aa-4ea6-bc7e-6b57b54da74b.webp|https://cd-opf.pages.dev/characters/9a29b4d8-d5aa-4ea6-bc7e-6b57b54da74b.webp
clear-clear-fruit|https://cd-opf.pages.dev/fruits/93e3a3b9-ac96-41bc-a098-7a12283c3ca5.webp|https://cd-opf.pages.dev/characters/93e3a3b9-ac96-41bc-a098-7a12283c3ca5.webp
dog-dog-fruit-model-jackal|https://cd-opf.pages.dev/fruits/3e70324a-3104-45fc-a4aa-7fc6c317fcf3.webp|https://cd-opf.pages.dev/characters/3e70324a-3104-45fc-a4aa-7fc6c317fcf3.webp
door-door-fruit|https://cd-opf.pages.dev/fruits/2d8d7116-a89f-4cbf-9893-6e1156045a7e.webp|https://cd-opf.pages.dev/characters/2d8d7116-a89f-4cbf-9893-6e1156045a7e.webp
eleph-eleph-fruit|https://cd-opf.pages.dev/fruits/f9d2f630-bb40-49e7-9f05-b239c76f2aa6.webp|https://cd-opf.pages.dev/characters/f9d2f630-bb40-49e7-9f05-b239c76f2aa6.webp
swim-swim-fruit|https://cd-opf.pages.dev/fruits/3b24d864-ae46-4146-a1f7-6380076a0534.webp|https://cd-opf.pages.dev/characters/3b24d864-ae46-4146-a1f7-6380076a0534.webp
wax-wax-fruit|https://cd-opf.pages.dev/fruits/5ff126e1-a851-4209-b1f7-0045dd779336.webp|https://cd-opf.pages.dev/characters/5ff126e1-a851-4209-b1f7-0045dd779336.webp
memo-memo-fruit|https://cd-opf.pages.dev/fruits/d787a3dc-58e7-493a-a957-35832211b014.webp|https://cd-opf.pages.dev/characters/d787a3dc-58e7-493a-a957-35832211b014.webp
flower-flower-fruit|https://cd-opf.pages.dev/fruits/cbc8ff69-2426-41c1-8144-bbf8ad11493f.webp|https://cd-opf.pages.dev/characters/cbc8ff69-2426-41c1-8144-bbf8ad11493f.webp
smelt-smelt-fruit|https://cd-opf.pages.dev/fruits/9c4e2b7a-1f6d-4a8e-b3c5-7d2a9f1e6c8b.webp|https://cd-opf.pages.dev/characters/9c4e2b7a-1f6d-4a8e-b3c5-7d2a9f1e6c8b.webp
book-book-fruit|https://cd-opf.pages.dev/fruits/5c0847a6-6f5c-4976-801c-872e2b6b29ca.webp|https://cd-opf.pages.dev/characters/5c0847a6-6f5c-4976-801c-872e2b6b29ca.webp
heal-heal-fruit|https://cd-opf.pages.dev/fruits/2422873d-5104-4b79-bb48-a64e7fda415c.webp|https://cd-opf.pages.dev/characters/2422873d-5104-4b79-bb48-a64e7fda415c.webp
munch-munch-fruit|https://cd-opf.pages.dev/fruits/7891d9ff-5621-415d-90e5-07429ab84e1a.webp|https://cd-opf.pages.dev/characters/7891d9ff-5621-415d-90e5-07429ab84e1a.webp
plume-plume-fruit|https://cd-opf.pages.dev/fruits/e7711afb-1d99-44c5-9125-d8fc965e6fdc.webp|https://cd-opf.pages.dev/characters/e7711afb-1d99-44c5-9125-d8fc965e6fdc.webp
bug-bug-fruit-model-rhinoceros-beetle|https://cd-opf.pages.dev/fruits/d6e38a32-8746-4550-b349-8f149e3568b8.webp|https://cd-opf.pages.dev/characters/d6e38a32-8746-4550-b349-8f149e3568b8.webp
luck-luck-fruit|https://cd-opf.pages.dev/fruits/9f83e24c-99f5-48cb-9e11-cd84a0119bbb.webp|https://cd-opf.pages.dev/characters/9f83e24c-99f5-48cb-9e11-cd84a0119bbb.webp
barrier-barrier-fruit|https://cd-opf.pages.dev/fruits/03b1c5ed-d71d-45ee-8853-84dc7aad7ae8.webp|https://cd-opf.pages.dev/characters/03b1c5ed-d71d-45ee-8853-84dc7aad7ae8.webp
castle-castle-fruit|https://cd-opf.pages.dev/fruits/e8c164dd-0863-4a0d-bd03-3a056ef31b9c.webp|https://cd-opf.pages.dev/characters/e8c164dd-0863-4a0d-bd03-3a056ef31b9c.webp
heat-heat-fruit|https://cd-opf.pages.dev/fruits/a90cf2bf-bd90-4fac-ae0f-cf33b9949b3d.webp|https://cd-opf.pages.dev/characters/a90cf2bf-bd90-4fac-ae0f-cf33b9949b3d.webp
ox-ox-fruit-model-giraffe|https://cd-opf.pages.dev/fruits/66399f13-ab58-43e0-ad8d-5793068b5e8b.webp|https://cd-opf.pages.dev/characters/66399f13-ab58-43e0-ad8d-5793068b5e8b.webp
pocket-pocket-fruit|https://cd-opf.pages.dev/fruits/64f8a634-b44b-4937-8bdb-94a135372056.webp|https://cd-opf.pages.dev/characters/64f8a634-b44b-4937-8bdb-94a135372056.webp
spider-spider-fruit|https://cd-opf.pages.dev/fruits/416a57b4-f1a4-41ce-85f8-f31761b2b17f.webp|https://cd-opf.pages.dev/characters/416a57b4-f1a4-41ce-85f8-f31761b2b17f.webp
stone-stone-fruit|https://cd-opf.pages.dev/fruits/4d196de2-9830-4ced-bd48-1633972d9de9.webp|https://cd-opf.pages.dev/characters/4d196de2-9830-4ced-bd48-1633972d9de9.webp
ton-ton-fruit|https://cd-opf.pages.dev/fruits/779186d4-bfeb-4f81-983e-1ce2c3c8f3ea.webp|https://cd-opf.pages.dev/characters/779186d4-bfeb-4f81-983e-1ce2c3c8f3ea.webp
snake-snake-fruit-model-anaconda|https://cd-opf.pages.dev/fruits/f338b67f-4239-4bd7-8eef-0e75d06843da.webp|https://cd-opf.pages.dev/characters/f338b67f-4239-4bd7-8eef-0e75d06843da.webp
bis-bis-fruit|https://cd-opf.pages.dev/fruits/677f28c4-858d-47c0-ba56-f835f785f2ab.webp|https://cd-opf.pages.dev/characters/677f28c4-858d-47c0-ba56-f835f785f2ab.webp
dog-dog-fruit-model-okuchi|https://cd-opf.pages.dev/fruits/2bbd9b25-5ce1-46a1-99c4-f0a2f913f557.webp|https://cd-opf.pages.dev/characters/2bbd9b25-5ce1-46a1-99c4-f0a2f913f557.webp
horm-horm-fruit|https://cd-opf.pages.dev/fruits/5d3bff23-ad5b-49d0-bebf-7a7fd34ae17a.webp|https://cd-opf.pages.dev/characters/5d3bff23-ad5b-49d0-bebf-7a7fd34ae17a.webp
human-human-fruit-model-onyudo|https://cd-opf.pages.dev/fruits/b9028226-e1d6-4332-81cb-630227c88e08.webp|https://cd-opf.pages.dev/characters/b9028226-e1d6-4332-81cb-630227c88e08.webp
slow-slow-fruit|https://cd-opf.pages.dev/fruits/36bf8750-7186-48b0-92e2-fccf726aa1a4.webp|https://cd-opf.pages.dev/characters/36bf8750-7186-48b0-92e2-fccf726aa1a4.webp
snow-snow-fruit|https://cd-opf.pages.dev/fruits/80a9b2ad-0669-4063-92db-e49fc1ac1e29.webp|https://cd-opf.pages.dev/characters/80a9b2ad-0669-4063-92db-e49fc1ac1e29.webp
ride-ride-fruit|https://cd-opf.pages.dev/fruits/c2e7a831-5f04-4d9b-b3e8-1a09f6c84d27.webp|https://cd-opf.pages.dev/characters/c2e7a831-5f04-4d9b-b3e8-1a09f6c84d27.webp
cat-cat-fruit-saber-toothed-tiger-model|https://cd-opf.pages.dev/fruits/48a16313-828e-4ae5-b0d3-522a47fad3fd.webp|https://cd-opf.pages.dev/characters/48a16313-828e-4ae5-b0d3-522a47fad3fd.webp
arrow-arrow-fruit|https://cd-opf.pages.dev/fruits/b4e8a1d6-3c7f-4e29-9a5b-8d1f6c2e7a30.webp|https://cd-opf.pages.dev/characters/b4e8a1d6-3c7f-4e29-9a5b-8d1f6c2e7a30.webp
mutt-mutt-fruit-wolf-model|https://cd-opf.pages.dev/fruits/c40cd64d-f137-4ba2-b717-768a10bc5771.webp|https://cd-opf.pages.dev/characters/c40cd64d-f137-4ba2-b717-768a10bc5771.webp
age-age-fruit|https://cd-opf.pages.dev/fruits/674fb365-cefe-479b-8578-9854c22f91a9.webp|https://cd-opf.pages.dev/characters/674fb365-cefe-479b-8578-9854c22f91a9.webp
dragon-dragon-fruit-model-brachiosaurus|https://cd-opf.pages.dev/fruits/0b8f22e3-2841-4e2e-a330-cef2746b4490.webp|https://cd-opf.pages.dev/characters/0b8f22e3-2841-4e2e-a330-cef2746b4490.webp
float-float-fruit|https://cd-opf.pages.dev/fruits/9611ddc5-980c-4cca-8cfd-02a981f8a8b0.webp|https://cd-opf.pages.dev/characters/9611ddc5-980c-4cca-8cfd-02a981f8a8b0.webp
huge-huge-fruit|https://cd-opf.pages.dev/fruits/4f1a1050-5eb8-4ec7-b8f6-8628cf19d34f.webp|https://cd-opf.pages.dev/characters/4f1a1050-5eb8-4ec7-b8f6-8628cf19d34f.webp
snake-snake-fruit-model-king-cobra|https://cd-opf.pages.dev/fruits/575c590d-f740-445a-ac87-4778953eea3e.webp|https://cd-opf.pages.dev/characters/575c590d-f740-445a-ac87-4778953eea3e.webp
thorn-thorn-fruit|https://cd-opf.pages.dev/fruits/5c8e2f4a-9b1d-4e6c-a3f7-1d9b6e4c8a2f.webp|https://cd-opf.pages.dev/characters/5c8e2f4a-9b1d-4e6c-a3f7-1d9b6e4c8a2f.webp
brain-brain-fruit|https://cd-opf.pages.dev/fruits/3455ae44-758e-40b5-9866-ae39f81121de.webp|https://cd-opf.pages.dev/characters/3455ae44-758e-40b5-9866-ae39f81121de.webp
cat-cat-fruit-leopard-model|https://cd-opf.pages.dev/fruits/e334692a-8ae3-449c-a61e-df45b8876e38.webp|https://cd-opf.pages.dev/characters/e334692a-8ae3-449c-a61e-df45b8876e38.webp
dino-dino-fruit-model-triceratops|https://cd-opf.pages.dev/fruits/e3a19d74-bf82-4c6f-a051-7d3e2f905b18.webp|https://cd-opf.pages.dev/characters/e3a19d74-bf82-4c6f-a051-7d3e2f905b18.webp
glug-glug-fruit|https://cd-opf.pages.dev/fruits/f219231d-eecd-492a-a8f9-b3f491d6bc0b.webp|https://cd-opf.pages.dev/characters/f219231d-eecd-492a-a8f9-b3f491d6bc0b.webp
swamp-swamp-fruit|https://cd-opf.pages.dev/fruits/a3c643da-69e8-4ad3-bedb-7fa6a42b86dd.webp|https://cd-opf.pages.dev/characters/a3c643da-69e8-4ad3-bedb-7fa6a42b86dd.webp
dragon-dragon-fruit-allosaurus-model|https://cd-opf.pages.dev/fruits/2742128e-2699-4211-9c71-7bfcd584a371.webp|https://cd-opf.pages.dev/characters/2742128e-2699-4211-9c71-7bfcd584a371.webp
dragon-dragon-fruit-pteranodon-model|https://cd-opf.pages.dev/fruits/bfa3a75e-25a1-4462-b964-cc5a93864a33.webp|https://cd-opf.pages.dev/characters/bfa3a75e-25a1-4462-b964-cc5a93864a33.webp
snake-snake-fruit-model-yamata-no-orochi|https://cd-opf.pages.dev/fruits/5e05b819-8698-4e3e-a56a-90d14517a694.webp|https://cd-opf.pages.dev/characters/5e05b819-8698-4e3e-a56a-90d14517a694.webp
hollow-hollow-fruit|https://cd-opf.pages.dev/fruits/c2bf5737-535a-4037-a348-5ef97fe8ce6b.webp|https://cd-opf.pages.dev/characters/c2bf5737-535a-4037-a348-5ef97fe8ce6b.webp
mirror-mirror-fruit|https://cd-opf.pages.dev/fruits/e69de64b-ebf0-44fd-8eeb-36b8de6cdfcf.webp|https://cd-opf.pages.dev/characters/e69de64b-ebf0-44fd-8eeb-36b8de6cdfcf.webp
warp-warp-fruit|https://cd-opf.pages.dev/fruits/124f8eea-223f-4de1-a6e3-5c727179a5a6.webp|https://cd-opf.pages.dev/characters/124f8eea-223f-4de1-a6e3-5c727179a5a6.webp
dragon-dragon-fruit-model-spinosaurus|https://cd-opf.pages.dev/fruits/9d062568-5641-44d2-a550-e00443282a53.webp|https://cd-opf.pages.dev/characters/9d062568-5641-44d2-a550-e00443282a53.webp
paw-paw-fruit|https://cd-opf.pages.dev/fruits/b19d720c-6991-4445-872b-3580a019c394.webp|https://cd-opf.pages.dev/characters/b19d720c-6991-4445-872b-3580a019c394.webp
eleph-eleph-fruit-ancient-zoan-model-mammoth|https://cd-opf.pages.dev/fruits/6d764087-9053-49aa-9634-8c4ad169f39b.webp|https://cd-opf.pages.dev/characters/6d764087-9053-49aa-9634-8c4ad169f39b.webp
revive-revive-fruit|https://cd-opf.pages.dev/fruits/5ae785ae-edd9-436e-ae59-cea5cd6ede18.webp|https://cd-opf.pages.dev/characters/5ae785ae-edd9-436e-ae59-cea5cd6ede18.webp
sand-sand-fruit|https://cd-opf.pages.dev/fruits/0c454f3d-1ca0-4b22-a631-5de7dd1f8b4b.webp|https://cd-opf.pages.dev/characters/0c454f3d-1ca0-4b22-a631-5de7dd1f8b4b.webp
sick-sick-fruit|https://cd-opf.pages.dev/fruits/3e8cf042-7e01-47ea-a3db-81bdb3b904df.webp|https://cd-opf.pages.dev/characters/3e8cf042-7e01-47ea-a3db-81bdb3b904df.webp
strong-strong-fruit|https://cd-opf.pages.dev/fruits/93e9dfa7-40d9-405d-bba0-37da07d0254c.webp|https://cd-opf.pages.dev/characters/93e9dfa7-40d9-405d-bba0-37da07d0254c.webp
shadow-shadow-fruit|https://cd-opf.pages.dev/fruits/f483ef8b-474e-406d-8c47-d55e4c714b73.webp|https://cd-opf.pages.dev/characters/f483ef8b-474e-406d-8c47-d55e4c714b73.webp
isle-isle-fruit|https://cd-opf.pages.dev/fruits/3f719c1c-2dbe-4480-bcfc-5a6b660d068b.webp|https://cd-opf.pages.dev/characters/3f719c1c-2dbe-4480-bcfc-5a6b660d068b.webp
press-press-fruit|https://cd-opf.pages.dev/fruits/aff9b6c2-49b4-4e46-b30c-a26aecd0f156.webp|https://cd-opf.pages.dev/characters/aff9b6c2-49b4-4e46-b30c-a26aecd0f156.webp
dragon-dragon-fruit-model-kirin|https://cd-opf.pages.dev/fruits/7d3f9a2c-6b1e-4c8d-a5f7-3e9c2b6d4a1f.webp|https://cd-opf.pages.dev/characters/7d3f9a2c-6b1e-4c8d-a5f7-3e9c2b6d4a1f.webp
glorp-glorp-fruit|https://cd-opf.pages.dev/fruits/9a6812d5-e9cb-4721-a381-3e3dd58d348b.webp|https://cd-opf.pages.dev/characters/9a6812d5-e9cb-4721-a381-3e3dd58d348b.webp
gas-gas-fruit|https://cd-opf.pages.dev/fruits/be06e960-fff8-4625-ba8a-3353262f5719.webp|https://cd-opf.pages.dev/characters/be06e960-fff8-4625-ba8a-3353262f5719.webp
dog-dog-fruit-model-nine-tailed-fox|https://cd-opf.pages.dev/fruits/4f1b1298-3fc0-495b-9345-9112d1daa4b2.webp|https://cd-opf.pages.dev/characters/4f1b1298-3fc0-495b-9345-9112d1daa4b2.webp
gum-gum-fruit|https://cd-opf.pages.dev/fruits/566d7c09-6866-4455-b85b-d3a05609c671.webp|https://cd-opf.pages.dev/characters/566d7c09-6866-4455-b85b-d3a05609c671.webp
love-love-fruit|https://cd-opf.pages.dev/fruits/b7225b59-d0ad-41d6-87b9-7af9887b43da.webp|https://cd-opf.pages.dev/characters/b7225b59-d0ad-41d6-87b9-7af9887b43da.webp
string-string-fruit|https://cd-opf.pages.dev/fruits/3e6cecd7-2a21-4429-a0ea-472655935312.webp|https://cd-opf.pages.dev/characters/3e6cecd7-2a21-4429-a0ea-472655935312.webp
time-time-fruit|https://cd-opf.pages.dev/fruits/09569647-1e01-41c9-b6d1-2d4fb62b54d8.webp|https://cd-opf.pages.dev/characters/09569647-1e01-41c9-b6d1-2d4fb62b54d8.webp
magnet-magnet-fruit|https://cd-opf.pages.dev/fruits/8d4c1aa7-e798-412b-85c7-2e7302970c9a.webp|https://cd-opf.pages.dev/characters/8d4c1aa7-e798-412b-85c7-2e7302970c9a.webp
venom-venom-fruit|https://cd-opf.pages.dev/fruits/6fec0f58-d375-4979-b193-6a9dd77cde92.webp|https://cd-opf.pages.dev/characters/6fec0f58-d375-4979-b193-6a9dd77cde92.webp
dragon-dragon-fruit-model-nidhoggr|https://cd-opf.pages.dev/fruits/f7c8a3d2-5b9e-4f1a-8c6d-2e7f9a3b1c4d.webp|https://cd-opf.pages.dev/characters/f7c8a3d2-5b9e-4f1a-8c6d-2e7f9a3b1c4d.webp
hobby-hobby-fruit|https://cd-opf.pages.dev/fruits/7e5063c3-429c-4bba-bfbe-f09968c901c0.webp|https://cd-opf.pages.dev/characters/7e5063c3-429c-4bba-bfbe-f09968c901c0.webp
human-human-fruit-model-buddha|https://cd-opf.pages.dev/fruits/58056cae-2074-4f51-b3d9-2f0183650396.webp|https://cd-opf.pages.dev/characters/58056cae-2074-4f51-b3d9-2f0183650396.webp
ice-ice-fruit|https://cd-opf.pages.dev/fruits/34d9afbd-a50a-4879-9422-401c7735bf5b.webp|https://cd-opf.pages.dev/characters/34d9afbd-a50a-4879-9422-401c7735bf5b.webp
mochi-mochi-fruit|https://cd-opf.pages.dev/fruits/7793d8c6-005b-41b6-94eb-d45c260ef71c.webp|https://cd-opf.pages.dev/characters/7793d8c6-005b-41b6-94eb-d45c260ef71c.webp
flame-flame-fruit|https://cd-opf.pages.dev/fruits/db98e40b-2313-4acd-82e2-599f6694f100.webp|https://cd-opf.pages.dev/characters/db98e40b-2313-4acd-82e2-599f6694f100.webp
woods-woods-fruit|https://cd-opf.pages.dev/fruits/f377c5a7-1a05-4bc4-8c8a-3b356ae5250b.webp|https://cd-opf.pages.dev/characters/f377c5a7-1a05-4bc4-8c8a-3b356ae5250b.webp
rumble-rumble-fruit|https://cd-opf.pages.dev/fruits/27264f75-a52c-4e6b-9bc0-0e8736284228.webp|https://cd-opf.pages.dev/characters/27264f75-a52c-4e6b-9bc0-0e8736284228.webp
bird-bird-fruit-model-phoenix|https://cd-opf.pages.dev/fruits/74d84e97-88df-41eb-ae99-6ed20dfc15f1.webp|https://cd-opf.pages.dev/characters/74d84e97-88df-41eb-ae99-6ed20dfc15f1.webp
fish-fish-fruit-model-azure-dragon|https://cd-opf.pages.dev/fruits/2edc9c8c-3638-42f9-b10f-036edd5cef5d.webp|https://cd-opf.pages.dev/characters/2edc9c8c-3638-42f9-b10f-036edd5cef5d.webp
glint-glint-fruit|https://cd-opf.pages.dev/fruits/72c37a8f-6077-4603-bed3-42cf6dd732da.webp|https://cd-opf.pages.dev/characters/72c37a8f-6077-4603-bed3-42cf6dd732da.webp
mag-mag-fruit|https://cd-opf.pages.dev/fruits/7982c730-2937-4a9d-9371-cc22f1c90a52.webp|https://cd-opf.pages.dev/characters/7982c730-2937-4a9d-9371-cc22f1c90a52.webp
op-op-fruit|https://cd-opf.pages.dev/fruits/12708145-c2bd-480f-be4a-74aaa4f8f8ea.webp|https://cd-opf.pages.dev/characters/12708145-c2bd-480f-be4a-74aaa4f8f8ea.webp
soul-soul-fruit|https://cd-opf.pages.dev/fruits/a207bfb2-00be-49a9-9653-34e08d8af057.webp|https://cd-opf.pages.dev/characters/a207bfb2-00be-49a9-9653-34e08d8af057.webp
dark-dark-fruit|https://cd-opf.pages.dev/fruits/488246a5-5153-416d-bdb7-a1aafc252f57.webp|https://cd-opf.pages.dev/characters/488246a5-5153-416d-bdb7-a1aafc252f57.webp
tremor-tremor-fruit|https://cd-opf.pages.dev/fruits/93620d09-4531-4026-b7a9-40aa4bac80f1.webp|https://cd-opf.pages.dev/characters/93620d09-4531-4026-b7a9-40aa4bac80f1.webp
LIST
printf "\n"
echo "fruits:     $(ls fruits/*.webp 2>/dev/null | wc -l) of 148"
echo "characters: $(ls fruits/characters/*.webp 2>/dev/null | wc -l) of 148"
[ "$fail" -eq 0 ] || { echo "$fail failed"; exit 1; }
