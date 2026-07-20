import { useEffect, useState } from "react";

function App() {
  const [profile, setProfile] = useState({});
  const [skills, setSkills] = useState([]);
  const [projects, setProjects] = useState([]);
  const [experiences, setExperiences] = useState([]);
  const [certifications, setCertifications] = useState([]);

  useEffect(() => {
    loadPortfolio();
  }, []);

  async function loadPortfolio() {
    try {
      const profileResponse = await fetch("/api/profile");
      const profileData = await profileResponse.json();
      setProfile(profileData);
    } catch {
      console.log("Profile endpoint unavailable");
    }

    try {
      const skillsResponse = await fetch("/api/skills");
      const skillsData = await skillsResponse.json();
      setSkills(skillsData);
    } catch {
      console.log("Skills endpoint unavailable");
    }

    try {
      const projectsResponse = await fetch("/api/projects");
      const projectsData = await projectsResponse.json();
      setProjects(projectsData);
    } catch {
      console.log("Projects endpoint unavailable");
    }

    try {
      const experiencesResponse = await fetch("/api/experiences");
      const experiencesData = await experiencesResponse.json();
      setExperiences(experiencesData);
    } catch {
      console.log("Experiences endpoint unavailable");
    }

    try {
      const certificationsResponse = await fetch(
        "/api/certifications"
      );

      const certificationsData =
        await certificationsResponse.json();

      setCertifications(certificationsData);
    } catch {
      console.log("Certifications endpoint unavailable");
    }
  }

  return (
    <>
      <header>
        <h1>
          {profile.fullName || "Caroline Moraes"}
        </h1>

        <h2>
          {profile.title ||
            "Senior Analyst, DevOps Engineering"}
        </h2>

        <p>
          {profile.summary ||
            "DevOps and Cloud Engineer"}
        </p>
      </header>

      <section>
        <h2>Skills</h2>

        <div id="skillsContainer">
          {skills.map((skill) => (
            <div
              key={skill.id}
              className="skill"
            >
              {skill.name}
            </div>
          ))}
        </div>
      </section>

      <section>
        <h2>Projects</h2>

        <div id="projectsContainer">
          {projects.map((project) => (
            <div
              key={project.id}
              className="project-card"
            >
              <h3>{project.name}</h3>

              <p>{project.description}</p>

              {project.gitHubUrl}<a>
                GitHub Repository
              </a>
            </div>
          ))}
        </div>
      </section>

      <section>
        <h2>Experience</h2>

        {experiences.map((exp) => (
          <div
            key={exp.id}
            className="experience-card"
          >
            <h3>{exp.positionName}</h3>

            <strong>
              {exp.companyName}
            </strong>

            <p>{exp.description}</p>
          </div>
        ))}
      </section>

      <section>
        <h2>Certifications</h2>

        {certifications.map((cert) => (
          <div
            key={cert.id}
            className="certification-card"
          >
            <strong>{cert.name}</strong>

            <p>{cert.issuer}</p>
          </div>
        ))}
      </section>

      <footer>
        © 2026 Caroline Moraes |
        Azure • AWS • Terraform • DevOps
      </footer>
    </>
  );
}

export default App;