import UIKit

class MemberInfoViewController: UIViewController {
    
    var memberName: String?
    
    // Dictionary holding member information
    private let memberInfo: [String: String] = [
        "chara_kana": """
        原菜乃華
        [ 有馬かな ]
        元・天才子役の女優。
        ルビー、MEMちょと「B小町」を結成する。

        2009 年に芸能界デビュー。映画『罪の声』（20）の生島望役で注目され、以降「ナイト ・ ドクター」（CX/21）、「真犯人フラグ」（NTV/22）、「ナンバ MG5」（CX/22）など多くのドラマに出演。アニメーショ ン映画『すずめの戸締まり』（22）では1,700人を超えるオーデションから主人公・岩戸鈴芽の声優に抜擢され、見事に演じた。近作に、映画『ミステリと言う勿れ』（23）狩集汐路役、大河ドラマ「どうする家康」（NHK/23）千姫役、映画『恋わずらいのエリー』（24）市村恵莉子役などがあり、それぞれの作品で存在感を発揮している。
        """,
        "chara_ruby": """
        齊藤なぎさ
        [ ルビー ]
        アイの子どもで、アクアの双子の妹。
        亡き母であるアイのようなアイドルになることを目指し、
        「B小町」を結成する。

        2017年に指原莉乃プロデュースのアイドルグループ「=LOVE」のメンバーとしてデビュー。2023 年 1 月に卒業。在籍中、ドラマイズム「明日、私は誰かのカノジョ」（MBS/TBS/22）に、高橋優愛（ゆあてゃ）役で出演し話題となり、俳優としても注目を集めた。卒業後は映画『交換ウソ日記』（23）や「最高の生徒～余命 1 年のラストダンス～」（NTV/23）へ出演するなど、俳優・声優として活躍の場を広げている。
        """,
        "chara_memcho": """
        あの
        [ MEMちょ ]
        人気インフルエンサー。
        ルビー、かなと「B小町」を結成する。

        アーティストとして 2022 年 4 月にトイズファクトリーよりデビュー。同年 11 月にリリースした「ちゅ、多様性。」で昨年末の第 74 回 NHK 紅白歌合戦にも出演。俳優としては、映画『鯨の骨』（23）で一人二役の難役を演じ、主題歌「鯨の骨」の作詞 ・作曲 ・ 歌唱も担当。アニメ映画『デッドデッドデーモンズデデデデデストラクション』（24）では、戦争ゲームオタクゆえ日常的に寝不足の女子高生 ・ 中川凰蘭役に抜擢され、声優にも初挑戦。アーティスト、タレント、俳優、声優、モデルなど幅広く活動中。
        """
    ]
    
    private let infoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .natural
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 24)
        label.backgroundColor = .systemCyan
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(infoLabel)
        setupLayout()
        
        // Set the member name and info to the label
        if let memberName = memberName, let memberInfo = memberInfo[memberName] {
            infoLabel.text = "\(memberInfo)"
        }
    }
    
    private func setupLayout() {
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            // Position label at the top and center it horizontally
            infoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            infoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
