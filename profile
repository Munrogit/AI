<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Amber Munro — Outreach Specialist | Hill College</title>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    :root {
      --navy:    #1B2D45;
      --gold:    #C9992A;
      --gold-lt: #F5E6C0;
      --cream:   #F9F6F0;
      --slate:   #4A5568;
      --mist:    #E8EDF3;
      --white:   #FFFFFF;
      --ff-display: 'Playfair Display', Georgia, serif;
      --ff-body:    'Inter', system-ui, sans-serif;
    }
    html { scroll-behavior: smooth; }
    body { font-family: var(--ff-body); background: var(--cream); color: var(--navy); min-height: 100vh; overflow-x: hidden; }

    nav {
      position: sticky; top: 0; z-index: 100;
      background: var(--white); border-bottom: 1px solid var(--mist);
      padding: 0 2rem; height: 56px;
      display: flex; align-items: center; justify-content: space-between;
      transition: box-shadow .3s;
    }
    nav.scrolled { box-shadow: 0 2px 16px rgba(27,45,69,.10); }
    .nav-brand { font-family: var(--ff-display); font-size: 1.05rem; color: var(--navy); letter-spacing: .01em; }
    .nav-links { display: flex; gap: 1.5rem; list-style: none; }
    .nav-links a { font-size: .825rem; font-weight: 500; letter-spacing: .04em; text-transform: uppercase; color: var(--slate); text-decoration: none; transition: color .2s; }
    .nav-links a:hover { color: var(--gold); }

    .hero { position: relative; min-height: 82vh; display: flex; align-items: center; overflow: hidden; padding: 5rem 2rem 4rem; }
    .hero-bg { position: absolute; inset: 0; background: var(--navy); clip-path: polygon(0 0, 62% 0, 46% 100%, 0 100%); z-index: 0; }
    .hero-accent { position: absolute; bottom: -60px; left: 18%; width: 320px; height: 320px; border-radius: 50%; background: var(--gold); opacity: .07; z-index: 0; }
    .hero-inner { position: relative; z-index: 1; max-width: 1100px; margin: 0 auto; width: 100%; display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; align-items: center; }
    .hero-text { padding: 1rem 0; }
    .hero-eyebrow { display: inline-flex; align-items: center; gap: .5rem; font-size: .75rem; font-weight: 600; letter-spacing: .12em; text-transform: uppercase; color: var(--gold); margin-bottom: 1.25rem; }
    .hero-eyebrow::before { content: ''; display: block; width: 28px; height: 2px; background: var(--gold); }
    .hero-name { font-family: var(--ff-display); font-size: clamp(2.6rem, 5vw, 4rem); font-weight: 600; color: var(--white); line-height: 1.1; margin-bottom: .6rem; }
    .hero-title { font-size: 1.05rem; font-weight: 300; color: rgba(255,255,255,.65); letter-spacing: .03em; margin-bottom: 2rem; }
    .hero-cta { display: inline-flex; align-items: center; gap: .6rem; background: var(--gold); color: var(--white); font-size: .875rem; font-weight: 600; letter-spacing: .04em; text-decoration: none; padding: .75rem 1.75rem; border-radius: 2px; transition: background .2s, transform .15s; }
    .hero-cta:hover { background: #b08320; transform: translateY(-1px); }
    .hero-cta svg { width: 16px; height: 16px; }

    .hero-card { background: var(--white); border-radius: 4px; padding: 2.5rem; box-shadow: 0 20px 60px rgba(27,45,69,.18); opacity: 0; transform: translateY(24px); transition: opacity .6s .3s, transform .6s .3s; }
    .hero-card.visible { opacity: 1; transform: translateY(0); }
    .card-label { font-size: .7rem; font-weight: 600; letter-spacing: .12em; text-transform: uppercase; color: var(--gold); margin-bottom: 1.25rem; }
    .card-institution { display: flex; align-items: center; gap: 1rem; padding: 1.1rem 1.25rem; background: var(--cream); border-radius: 3px; margin-bottom: 1rem; }
    .inst-icon { width: 42px; height: 42px; border-radius: 50%; background: var(--navy); display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
    .inst-icon svg { width: 20px; height: 20px; fill: var(--gold); }
    .inst-name { font-weight: 600; font-size: .95rem; color: var(--navy); }
    .inst-sub  { font-size: .8rem; color: var(--slate); margin-top: 2px; }
    .card-divider { height: 1px; background: var(--mist); margin: 1.25rem 0; }
    .stat-row { display: grid; grid-template-columns: 1fr 1fr; gap: 1rem; }
    .stat-item { text-align: center; padding: .75rem; background: var(--mist); border-radius: 3px; }
    .stat-num  { font-family: var(--ff-display); font-size: 1.6rem; color: var(--navy); font-weight: 600; }
    .stat-lbl  { font-size: .7rem; font-weight: 500; letter-spacing: .06em; text-transform: uppercase; color: var(--slate); margin-top: 2px; }

    section { padding: 5rem 2rem; }
    .section-inner { max-width: 1100px; margin: 0 auto; }
    .section-eyebrow { font-size: .7rem; font-weight: 600; letter-spacing: .14em; text-transform: uppercase; color: var(--gold); margin-bottom: .6rem; }
    .section-title { font-family: var(--ff-display); font-size: clamp(1.6rem, 3vw, 2.2rem); font-weight: 600; color: var(--navy); margin-bottom: 2.5rem; }

    #about { background: var(--white); }
    .about-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; align-items: start; }
    .about-body { font-size: 1rem; line-height: 1.8; color: var(--slate); }
    .about-body p + p { margin-top: 1rem; }
    .about-highlights { display: flex; flex-direction: column; gap: .75rem; }
    .highlight-item { display: flex; align-items: flex-start; gap: .875rem; padding: 1.1rem 1.25rem; border: 1px solid var(--mist); border-radius: 3px; transition: border-color .2s, transform .2s; cursor: default; }
    .highlight-item:hover { border-color: var(--gold); transform: translateX(4px); }
    .hi-icon { width: 36px; height: 36px; border-radius: 50%; background: var(--gold-lt); display: flex; align-items: center; justify-content: center; flex-shrink: 0; }
    .hi-icon svg { width: 17px; height: 17px; stroke: var(--gold); fill: none; stroke-width: 1.8; }
    .hi-title { font-size: .9rem; font-weight: 600; color: var(--navy); margin-bottom: 2px; }
    .hi-sub   { font-size: .8rem; color: var(--slate); line-height: 1.4; }

    #resources { background: var(--cream); }
    .resources-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 1.25rem; }
    .resource-card { background: var(--white); border: 1px solid var(--mist); border-radius: 4px; padding: 1.75rem; text-decoration: none; color: inherit; display: flex; flex-direction: column; gap: .6rem; transition: box-shadow .25s, transform .25s, border-color .25s; position: relative; overflow: hidden; }
    .resource-card::after { content: ''; position: absolute; bottom: 0; left: 0; right: 0; height: 3px; background: var(--gold); transform: scaleX(0); transform-origin: left; transition: transform .3s; }
    .resource-card:hover { box-shadow: 0 8px 32px rgba(27,45,69,.1); transform: translateY(-3px); border-color: transparent; }
    .resource-card:hover::after { transform: scaleX(1); }
    .rc-tag { display: inline-block; font-size: .65rem; font-weight: 600; letter-spacing: .1em; text-transform: uppercase; padding: 3px 8px; background: var(--gold-lt); color: #7a5b10; border-radius: 2px; align-self: flex-start; }
    .rc-title { font-size: 1rem; font-weight: 600; color: var(--navy); line-height: 1.3; }
    .rc-desc  { font-size: .83rem; color: var(--slate); line-height: 1.55; flex: 1; }
    .rc-arrow { font-size: .8rem; color: var(--gold); font-weight: 600; margin-top: .25rem; }

    #contact { background: var(--navy); }
    #contact .section-title { color: var(--white); }
    .contact-layout { display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; align-items: start; }
    .contact-intro { font-size: 1rem; color: rgba(255,255,255,.65); line-height: 1.8; margin-bottom: 2rem; }
    .contact-details { display: flex; flex-direction: column; gap: .75rem; }
    .contact-item { display: flex; align-items: center; gap: .875rem; }
    .contact-item svg { width: 18px; height: 18px; stroke: var(--gold); fill: none; stroke-width: 1.8; flex-shrink: 0; }
    .contact-item span { font-size: .9rem; color: rgba(255,255,255,.75); }
    .contact-form { display: flex; flex-direction: column; gap: .875rem; }
    .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: .875rem; }
    .contact-form input, .contact-form textarea { width: 100%; padding: .8rem 1rem; background: rgba(255,255,255,.07); border: 1px solid rgba(255,255,255,.15); border-radius: 3px; color: var(--white); font-family: var(--ff-body); font-size: .875rem; outline: none; transition: border-color .2s; }
    .contact-form input::placeholder, .contact-form textarea::placeholder { color: rgba(255,255,255,.35); }
    .contact-form input:focus, .contact-form textarea:focus { border-color: var(--gold); }
    .contact-form textarea { resize: vertical; min-height: 110px; }
    .form-submit { align-self: flex-start; background: var(--gold); color: var(--white); border: none; padding: .75rem 1.75rem; font-family: var(--ff-body); font-size: .875rem; font-weight: 600; letter-spacing: .04em; border-radius: 2px; cursor: pointer; transition: background .2s, transform .15s; }
    .form-submit:hover { background: #b08320; transform: translateY(-1px); }
    .form-success { display: none; padding: 1rem 1.25rem; background: rgba(201,153,42,.15); border: 1px solid var(--gold); border-radius: 3px; color: var(--gold-lt); font-size: .875rem; }

    footer { background: #111d2c; padding: 1.5rem 2rem; text-align: center; font-size: .78rem; color: rgba(255,255,255,.35); letter-spacing: .04em; }

    .fade-up { opacity: 0; transform: translateY(20px); transition: opacity .6s, transform .6s; }
    .fade-up.visible { opacity: 1; transform: translateY(0); }

    @media (max-width: 768px) {
      .hero-bg { clip-path: polygon(0 0, 100% 0, 100% 55%, 0 55%); }
      .hero-inner { grid-template-columns: 1fr; gap: 2rem; }
      .hero-name { color: var(--white); }
      .about-grid, .contact-layout { grid-template-columns: 1fr; gap: 2rem; }
      .form-row { grid-template-columns: 1fr; }
      .nav-links { display: none; }
    }
    @media (prefers-reduced-motion: reduce) {
      *, *::before, *::after { transition: none !important; animation: none !important; }
    }
  </style>
</head>
<body>

  <nav id="topNav">
    <span class="nav-brand">Amber Munro</span>
    <ul class="nav-links">
      <li><a href="#about">About</a></li>
      <li><a href="#resources">Resources</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </nav>

  <section class="hero" id="home">
    <div class="hero-bg"></div>
    <div class="hero-accent"></div>
    <div class="hero-inner">
      <div class="hero-text">
        <div class="hero-eyebrow">Hill College</div>
        <h1 class="hero-name">Amber<br>Munro</h1>
        <p class="hero-title">Outreach Specialist</p>
        <a href="#contact" class="hero-cta">
          Get in touch
          <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14M13 6l6 6-6 6"/></svg>
        </a>
      </div>
      <div class="hero-card" id="heroCard">
        <div class="card-label">Current Position</div>
        <div class="card-institution">
          <div class="inst-icon">
            <svg viewBox="0 0 24 24"><path d="M12 3L2 9l10 6 10-6-10-6zM2 17l10 6 10-6M2 13l10 6 10-6"/></svg>
          </div>
          <div>
            <div class="inst-name">Hill College</div>
            <div class="inst-sub">Outreach Specialist · Student Services</div>
          </div>
        </div>
        <div class="card-divider"></div>
        <div class="stat-row">
          <div class="stat-item">
            <div class="stat-num">TPEG</div>
            <div class="stat-lbl">Program Focus</div>
          </div>
          <div class="stat-item">
            <div class="stat-num">TX</div>
            <div class="stat-lbl">Region Served</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="about">
    <div class="section-inner">
      <div class="section-eyebrow">Background</div>
      <h2 class="section-title">About Amber</h2>
      <div class="about-grid">
        <div class="about-body fade-up">
          <p>As an Outreach Specialist at Hill College, Amber Munro connects students with the financial resources, programs, and support systems they need to pursue workforce credentials and academic success.</p>
          <p>Her work centers on making higher education accessible — guiding prospective students through financial aid options, noncredit workforce programs, and the pathways that lead to meaningful careers in the community.</p>
          <p>Amber is passionate about removing barriers for first-generation college students and ensuring that every learner who walks through Hill College's doors feels seen, supported, and set up to succeed.</p>
        </div>
        <div class="about-highlights fade-up">
          <div class="highlight-item">
            <div class="hi-icon">
              <svg viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75"/></svg>
            </div>
            <div>
              <div class="hi-title">Student Outreach</div>
              <div class="hi-sub">Connecting students to programs, scholarships, and workforce opportunities</div>
            </div>
          </div>
          <div class="highlight-item">
            <div class="hi-icon">
              <svg viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="3" width="20" height="14" rx="2"/><path d="M8 21h8M12 17v4"/></svg>
            </div>
            <div>
              <div class="hi-title">Financial Aid Navigation</div>
              <div class="hi-sub">TPEG, FAFSA guidance, and need-based assistance programs</div>
            </div>
          </div>
          <div class="highlight-item">
            <div class="hi-icon">
              <svg viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07A19.5 19.5 0 0 1 4.15 12a19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 3.06 1.2h3a2 2 0 0 1 2 1.72c.127.96.361 1.903.7 2.81a2 2 0 0 1-.45 2.11L7.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45c.907.339 1.85.573 2.81.7A2 2 0 0 1 21 16.92z"/></svg>
            </div>
            <div>
              <div class="hi-title">Community Partnerships</div>
              <div class="hi-sub">Building bridges between the college and the broader Hill County community</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="resources">
    <div class="section-inner">
      <div class="section-eyebrow">Links &amp; Materials</div>
      <h2 class="section-title">Resources</h2>
      <div class="resources-grid">
        <a href="tpegslide1.html" class="resource-card fade-up">
          <span class="rc-tag">Presentation</span>
          <div class="rc-title">TPEG Funding Overview</div>
          <div class="rc-desc">An introduction to the Texas Public Education Grant — eligibility, how funds are awarded, and what students can use them for.</div>
          <div class="rc-arrow">View slides →</div>
        </a>
        <a href="https://www.hillcollege.edu" target="_blank" rel="noopener" class="resource-card fade-up">
          <span class="rc-tag">Institution</span>
          <div class="rc-title">Hill College Website</div>
          <div class="rc-desc">Official programs, enrollment information, course catalogs, and campus resources for current and prospective students.</div>
          <div class="rc-arrow">Visit site →</div>
        </a>
        <a href="https://studentaid.gov/h/apply-for-aid/fafsa" target="_blank" rel="noopener" class="resource-card fade-up">
          <span class="rc-tag">Financial Aid</span>
          <div class="rc-title">Apply for FAFSA</div>
          <div class="rc-desc">Complete the Free Application for Federal Student Aid to determine eligibility for grants, work-study, and federal loans.</div>
          <div class="rc-arrow">Apply now →</div>
        </a>
        <a href="#contact" class="resource-card fade-up">
          <span class="rc-tag">Advising</span>
          <div class="rc-title">Schedule an Appointment</div>
          <div class="rc-desc">Have questions about funding, enrollment, or workforce programs? Send a message to connect with Amber directly.</div>
          <div class="rc-arrow">Get in touch →</div>
        </a>
      </div>
    </div>
  </section>

  <section id="contact">
    <div class="section-inner">
      <div class="section-eyebrow" style="color:var(--gold)">Reach Out</div>
      <h2 class="section-title">Contact Amber</h2>
      <div class="contact-layout">
        <div class="fade-up">
          <p class="contact-intro">Whether you're a prospective student, a community partner, or looking for information about Hill College programs — Amber is happy to help.</p>
          <div class="contact-details">
            <div class="contact-item">
              <svg viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/><polyline points="9,22 9,12 15,12 15,22"/></svg>
              <span>Hill College · Hillsboro, TX</span>
            </div>
            <div class="contact-item">
              <svg viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/><polyline points="22,6 12,13 2,6"/></svg>
              <span>amunro@hillcollege.edu</span>
            </div>
            <div class="contact-item">
              <svg viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07A19.5 19.5 0 0 1 4.15 12a19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 3.06 1.2h3a2 2 0 0 1 2 1.72c.127.96.361 1.903.7 2.81a2 2 0 0 1-.45 2.11L7.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45c.907.339 1.85.573 2.81.7A2 2 0 0 1 21 16.92z"/></svg>
              <span>Hill College Student Services</span>
            </div>
          </div>
        </div>
        <div class="fade-up">
          <form class="contact-form" id="contactForm" onsubmit="submitForm(event)">
            <div class="form-row">
              <input type="text" name="fname" placeholder="First name" required />
              <input type="text" name="lname" placeholder="Last name" required />
            </div>
            <input type="email" name="email" placeholder="Email address" required />
            <input type="text" name="subject" placeholder="Subject" />
            <textarea name="message" placeholder="Your message..." required></textarea>
            <button type="submit" class="form-submit">Send message</button>
            <div class="form-success" id="formSuccess">
              Thanks! Your message has been sent. Amber will be in touch soon.
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <footer>
    &copy; <span id="yr"></span> Amber Munro &mdash; Outreach Specialist, Hill College &mdash; All rights reserved
  </footer>

  <script>
    document.getElementById('yr').textContent = new Date().getFullYear();
    const nav = document.getElementById('topNav');
    window.addEventListener('scroll', () => { nav.classList.toggle('scrolled', window.scrollY > 20); });
    const heroCard = document.getElementById('heroCard');
    setTimeout(() => heroCard.classList.add('visible'), 200);
    const fadeEls = document.querySelectorAll('.fade-up');
    const observer = new IntersectionObserver(entries => {
      entries.forEach((e, i) => {
        if (e.isIntersecting) {
          setTimeout(() => e.target.classList.add('visible'), i * 100);
          observer.unobserve(e.target);
        }
      });
    }, { threshold: 0.15 });
    fadeEls.forEach(el => observer.observe(el));
    function submitForm(e) {
      e.preventDefault();
      const form = document.getElementById('contactForm');
      const success = document.getElementById('formSuccess');
      form.querySelectorAll('input, textarea, button').forEach(el => el.disabled = true);
      success.style.display = 'block';
    }
  </script>
</body>
</html>
