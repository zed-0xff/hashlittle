# frozen_string_literal: true

TESTDATA2 = [
  [0xdeadbeef, 0xdeadbeef], [0x8ba9414b, 0x5559b6c4], [0xdf0d39c9, 0xb29a7b0c], [0x6b12f277, 0x95346f90],
  [0xe4cf1d42, 0x13b4f97b], [0x1d4833cc, 0xea5bae4f], [0x5229ee9e, 0x7d4008d0], [0x589511d8, 0x57b5bcaf],
  [0xd4ccb93c, 0x71683417], [0xeca51474, 0x94d25656], [0x610fc1e3, 0x54b5ea10], [0x2ca6817a, 0x032e5ed4],
  [0x5e4aa593, 0x0cb6e7e9], [0xbc9d6816, 0x6bff0f35], [0x9609e9d3, 0x749a42bf], [0x63a6e503, 0x4391a77d],
  [0x5e84eafc, 0xc6284207], [0x8c3532cb, 0x6bb43f65], [0xd732003d, 0x59cdae44], [0x74abad21, 0x2c0e5374],
  [0x94b659b5, 0xb7a4dbc9], [0x8709c37b, 0xb5c589d2], [0x3190cf5d, 0x0aaeb476], [0xa5ff3c58, 0x311a6808],
  [0x9c0add53, 0x9f411002], [0x3a882244, 0x68519ca6], [0xa91dd5db, 0x753ec2a2], [0x761df2cd, 0x360473c3],
  [0x9255ed6e, 0xd746a3b0], [0x9c75ff61, 0xdc09846c], [0x308ed059, 0x9d942a7a], [0xdfa1dc11, 0xeecffdb2],
  [0x21362cfe, 0x1759d921], [0x0e62ec96, 0x3907f025], [0xd265c4e3, 0x2796f2c6], [0xe78281da, 0xe22c5bf7],
  [0x653b9ba4, 0x2c078b54], [0x12926a31, 0xb28b69dc], [0x31c1d4b1, 0x893f2130], [0xc81ceeae, 0xc06b25ec],
  [0x1c9fa888, 0x592f87c1], [0xd70589e9, 0xdacb4349], [0x9e14842a, 0x8923764a], [0x5db343d9, 0xe986c32e],
  [0x3a104df7, 0x147d5467], [0x0a40ca13, 0x2410e99c], [0x0b260a2c, 0x774a91e7], [0x2088dbc3, 0xb7e39ce1],
  [0x2f4775ab, 0xa3beb4f3], [0x82920552, 0x63734e29], [0x16464e80, 0xd8889670], [0x9ba06438, 0x331164b3],
  [0x84f3ce0c, 0x674b5803], [0x4725655a, 0x1b8ef32d], [0xd1ebb17f, 0xdf5fc0a7], [0x8aeb6d5b, 0xe714da7a],
  [0x9285001f, 0x2d470fd7], [0x86c6b345, 0x19678d4b], [0xfa7238f1, 0x58832f43], [0x278852ed, 0x3ff24b2c],
  [0xf9bec400, 0x5fdf152b], [0xbeab009a, 0xe0c95f93], [0xcb1bf3aa, 0x3bd939ff], [0x24fcde8a, 0x46c04826],
  [0x9ff036cc, 0xb56973a7], [0x09e22d6f, 0xafe72595], [0xdb884e9c, 0xe4a649db], [0x0caed6ba, 0x29b48f49],
  [0x8da7d795, 0x6ca7578c], [0x6e549a11, 0x47cb255a], [0x7269d11b, 0x3b5c7631], [0x20223a57, 0xb854b565],
  [0x84dd8038, 0xd5f71461], [0x4e46aa4c, 0xc1e72515], [0x1bc5fa39, 0xc56aeecd], [0xac4a1927, 0x57eaf76b],
  [0x0610425c, 0x9abfc9f4], [0x92d9a532, 0xb92f541c], [0xcfb611e1, 0xf72a9e6c], [0x5b0553c5, 0xc8bd73c3],
  [0x1055189c, 0x225cd4ea], [0x167da6c0, 0x12847bd8], [0x39860cb1, 0x02d2c5f5], [0x4af17916, 0x6b67d429],
  [0x0b3d7409, 0xaae1b372], [0x20990d24, 0x3d08036d], [0x9787aafc, 0x33cba4d9], [0xa60ad88d, 0xc24308ec],
  [0x64f05288, 0x07e66b82], [0xd2ba316e, 0x2bf30075], [0xd980a8c4, 0x8b8bc0f3], [0x4b1c9f85, 0x3bf716bc],
  [0x883a3708, 0x6d38b681], [0x6ae85365, 0x6cef0bf6], [0x20e680b9, 0x3ba915b4], [0x9bd79302, 0x8e99d238],
  [0x593edd31, 0x6b35c13e], [0x2d03691f, 0xfcc9a915], [0xd77a3dc1, 0x11f8fbc7], [0x0ff089f9, 0x68bbf75f],
  [0x682b4c0b, 0xb62a98e9], [0x0a689d55, 0x6e820704], [0x631d3f70, 0xc2c873b8], [0x270bef8b, 0x5868ceff],
  [0x6d97f10a, 0x09e80132], [0x799d3b35, 0x5384cc34], [0x5813fefc, 0x98e1e4f1], [0x0a1864b5, 0xfd85dbc3],
  [0xcf12111b, 0x5dff3844], [0x98bbc502, 0x1d7130b1], [0x03bd3c7a, 0xe5985056], [0x9467e2bc, 0x8a4e816d],
  [0x04ffccb6, 0x525f4b84], [0x1bb0ae56, 0xb767d7e4], [0x5e842210, 0x20a032b6], [0x6fc870c3, 0xb28cac5c],
  [0x25caa6ea, 0x2771902d], [0x458eeb83, 0xa0303123], [0xaf14cfa5, 0xe8f20167], [0xc2e4665f, 0xcc435ab2],
  [0x66e7d2a3, 0x841f2960], [0xb709053d, 0xbd08544b], [0x55c24261, 0xac286588], [0xa032a479, 0xa24f87a7],
  [0x35501134, 0x350a6bed], [0xb3b088db, 0xbe07d2c4], [0xa8ed4fd4, 0x8ad6c46e], [0xfc761aa0, 0x97cf4704],
  [0x4a200281, 0x848cffb2], [0xda8061b9, 0xe62ccef6], [0x9e9ce4b1, 0xfdfb67ee], [0xc02f13d4, 0x055820e5],
  [0x50d48f27, 0x79f3d2db], [0x11421187, 0x89c1995c], [0xa79a9608, 0x67902cd4], [0xed3e613c, 0x0f747585],
  [0x073b5a3b, 0xd64c5b56], [0xc25e859f, 0x20f754c3], [0xe6736c9f, 0x349aba69], [0x64bc43c2, 0x15f70f91],
  [0xa13f664f, 0x62af988b], [0x9c7d0c40, 0x8f9f9127], [0x85f95456, 0x8aa0b510], [0xd64cf605, 0x0f7f5b0c],
  [0x5155dc33, 0x2a65b488], [0x0959844f, 0x44b3c0d5], [0x27356a1e, 0x1bdd09a2], [0xbebeb84b, 0x43c73246],
  [0xbb87f13a, 0x31580a32], [0xb0a6f9cf, 0x85be2d5d], [0xdb6b37d3, 0xb65eac79], [0x22b88eba, 0x50857cf3],
  [0xd1f2053f, 0x7d0ecdd7], [0x196660b9, 0xee3692b2], [0xeaa6c874, 0x3d393556], [0xada985ce, 0x6978110d],
  [0x89b07339, 0x08803a69], [0xb616ff1f, 0x868a8379], [0xa6325b04, 0xb81e106c], [0x6954113c, 0xbcb69872],
  [0xaab3aab5, 0x88618ea5], [0xa79b1197, 0x4e34eb7a], [0x8972f6a9, 0x01e89c39], [0xe95433c2, 0x85c78e9a],
  [0x100d09d7, 0x190c9b47], [0x1d35877a, 0xc0bf0bae], [0x468ba086, 0x06e60db9], [0x40ef34c4, 0x5b6e14c5],
  [0x73557459, 0x20344890], [0xcaeb1e65, 0x7b429b1f], [0xee95207c, 0xe4282561], [0xae63513e, 0x1b659a23],
  [0xaf869b46, 0x55947817], [0x8c67df87, 0xd497b20d], [0xb7b6262f, 0xfd044f6f], [0xd592c285, 0xe9e2512d],
  [0x67e79113, 0xde98a3aa], [0x73b72b71, 0xe9f56525], [0xaa1578e5, 0x83281362], [0x028568d4, 0xd8abdfaa],
  [0x8e457ef5, 0x0aa395ef], [0xf22dd334, 0x068161a7], [0x62aeacb8, 0xf120ce64], [0x283c60eb, 0x7e2641cb],
  [0xd2333d25, 0xf98c95cb], [0xeda39cc1, 0xa6502b97], [0x6449ab55, 0xef0351a0], [0x79b711fc, 0xf30abb14],
  [0x6bef7247, 0x3b47c078], [0x1e217934, 0xbc3be917], [0x93fcc6ef, 0xc0458721], [0x0dfc94f1, 0x7cedd3b8],
  [0x20336cb3, 0xb74b7a90], [0x7c9aa391, 0x77a26a6d], [0x3dba9c59, 0x9dffe57c], [0xf37995c8, 0x2f563a20],
  [0x3a48798f, 0x44f0a506], [0xf4f93cce, 0xaab08fe9], [0x1bdae23d, 0x6fa174ca], [0x52a47007, 0x587d2e5f],
  [0x0a07b16b, 0xbf74b227], [0xe85cf07b, 0xe5a45f5c], [0x69d450c5, 0x76c81d66], [0xab6c74fa, 0x5fc21c63],
  [0x3eda7834, 0xdbcd1522], [0xe440fa4a, 0x9585b4f2], [0xf71c0acd, 0x2673119c], [0xe564f374, 0xb25d6792],
  [0x8570e765, 0x3c43a389], [0x7b653530, 0x2a64a5ba], [0xb37434c2, 0x04b2cd71], [0x3b7989e5, 0x805e98cc],
  [0x609d9c33, 0x8c45bf78], [0x399c76b7, 0xb9c2d826], [0x67997c66, 0x3f7a7db3], [0x5730d33a, 0xb2321d69],
  [0x53255f36, 0x62663fe6], [0x63daca6a, 0x067c83e9], [0x59a089ef, 0xeafad566], [0xf3bb77da, 0x2cb693c8],
  [0xdd68870e, 0x16788ac3], [0x8c4c1e92, 0xe04021e1], [0x7823c7a8, 0xc9b3fe4f], [0x49c48792, 0x1fcd3902],
  [0xad680b0c, 0x5f2d3aa7], [0xba7d9fe9, 0xdcb2a35e], [0x70de140f, 0x1c5d0b69], [0x5fe6a733, 0x30c2c52d],
  [0xa2b911c7, 0x27caf1ec], [0x2a886f66, 0xb7fbe41a], [0x24740ca7, 0x5c31674d], [0xa256e64e, 0xa3ede800],
  [0x4cb60cc2, 0xe94ea18f], [0xda955a60, 0xd7de2fd4], [0x37db05cc, 0xde060c98], [0x13f407fc, 0x191272ed],
  [0x63291acd, 0xc6b1d385], [0x220cb914, 0xa0a006bf], [0xe64a7535, 0x561d7110], [0x104b49a1, 0xcb7994d8],
  [0xe89e9f6f, 0x7fcb5058], [0x739c3e07, 0x190e460f], [0x6f4a06c7, 0x50b189c2], [0x58d22f34, 0xe0dd2b4d],
  [0xc9907254, 0x72ce9a57], [0xb88a3b6c, 0x63baedd9], [0xee854134, 0x68057435], [0x164b10d2, 0x90d827d2],
  [0x5195b673, 0xca158853], [0xe1de05cb, 0x9ff868a8], [0x441354f2, 0x6cefb654], [0x3c88839c, 0xae824a72],
  [0x7f0a6453, 0x176af173], [0xf200d16c, 0x5f7e5aa9], [0x7b285f15, 0x000df237], [0x7aec5e78, 0x5899469c],
].freeze

RSpec.describe Hashlittle do
  describe ".hashlittle2" do
    it "fails to hash an int" do
      expect { described_class.hashlittle2(42) }.to raise_error(TypeError)
    end

    it "reuses optional array argument" do
      a = []
      r = described_class.hashlittle2("test", a)
      expect(a.size).to eq(2)
      expect(r.object_id).to eq(a.object_id)
      expect(a).to eq([0xbe0c1952, 0x6da2c9ae])

      r = described_class.hashlittle2("test2", a)
      expect(a.size).to eq(2)
      expect(r.object_id).to eq(a.object_id)
      expect(a).to eq([0xb8b7d865, 0xcd725c99])
    end

    0x100.times do |i|
      it "hashes TESTDATA2[#{i}]" do
        s = i.times.map(&:chr).join
        expect(described_class.hashlittle2(s)).to eq(TESTDATA2[i])
      end
    end
  end
end