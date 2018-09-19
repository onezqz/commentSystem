package domain;

public class Post {
    /*
     * CREATE TABLE `post` (
     `pid` varchar(255) NOT NULL,
     `ptitle` varchar(255) DEFAULT NULL,
     `pcontext` varchar(255) DEFAULT NULL,
     `ckind` varchar(255) DEFAULT NULL,
     `pkind` varchar(255) DEFAULT NULL,
     PRIMARY KEY (`pid`)
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     */
    private String pid;
    private String ptitle;
    private String pcontext;
    private String ckind;
    private String pkind;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getPcontext() {
        return pcontext;
    }

    public void setPcontext(String pcontext) {
        this.pcontext = pcontext;
    }

    public String getCkind() {
        return ckind;
    }

    public void setCkind(String ckind) {
        this.ckind = ckind;
    }

    public String getPkind() {
        return pkind;
    }

    public void setPkind(String pkind) {
        this.pkind = pkind;
    }

    @Override
    public String toString() {
        return "Post{" +
                "ptitle='" + ptitle + '\'' +
                ", pcontext='" + pcontext + '\'' +
                ", ckind='" + ckind + '\'' +
                ", pkind='" + pkind + '\'' +
                '}';
    }
}
