package model;

public class Project {

    private int id;
    private String title;
    private String description;
    private String techStack;
    private String githubLink;
    private int userId;

    public Project() {
    }

    public Project(int id, String title, String description, String techStack, String githubLink, int userId) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.techStack = techStack;
        this.githubLink = githubLink;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTechStack() {
        return techStack;
    }

    public void setTechStack(String techStack) {
        this.techStack = techStack;
    }

    public String getGithubLink() {
        return githubLink;
    }

    public void setGithubLink(String githubLink) {
        this.githubLink = githubLink;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
