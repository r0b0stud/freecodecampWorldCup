--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1204, 2018, 'Final', 4, 2, 1970, 1971);
INSERT INTO public.games VALUES (1205, 2018, 'Third Place', 2, 0, 1972, 1973);
INSERT INTO public.games VALUES (1206, 2018, 'Semi-Final', 2, 1, 1971, 1973);
INSERT INTO public.games VALUES (1207, 2018, 'Semi-Final', 1, 0, 1970, 1972);
INSERT INTO public.games VALUES (1208, 2018, 'Quarter-Final', 3, 2, 1971, 1974);
INSERT INTO public.games VALUES (1209, 2018, 'Quarter-Final', 2, 0, 1973, 1975);
INSERT INTO public.games VALUES (1210, 2018, 'Quarter-Final', 2, 1, 1972, 1976);
INSERT INTO public.games VALUES (1211, 2018, 'Quarter-Final', 2, 0, 1970, 1977);
INSERT INTO public.games VALUES (1212, 2018, 'Eighth-Final', 2, 1, 1973, 1978);
INSERT INTO public.games VALUES (1213, 2018, 'Eighth-Final', 1, 0, 1975, 1979);
INSERT INTO public.games VALUES (1214, 2018, 'Eighth-Final', 3, 2, 1972, 1980);
INSERT INTO public.games VALUES (1215, 2018, 'Eighth-Final', 2, 0, 1976, 1981);
INSERT INTO public.games VALUES (1216, 2018, 'Eighth-Final', 2, 1, 1971, 1982);
INSERT INTO public.games VALUES (1217, 2018, 'Eighth-Final', 2, 1, 1974, 1983);
INSERT INTO public.games VALUES (1218, 2018, 'Eighth-Final', 2, 1, 1977, 1984);
INSERT INTO public.games VALUES (1219, 2018, 'Eighth-Final', 4, 3, 1970, 1985);
INSERT INTO public.games VALUES (1220, 2014, 'Final', 1, 0, 1986, 1985);
INSERT INTO public.games VALUES (1221, 2014, 'Third Place', 3, 0, 1987, 1976);
INSERT INTO public.games VALUES (1222, 2014, 'Semi-Final', 1, 0, 1985, 1987);
INSERT INTO public.games VALUES (1223, 2014, 'Semi-Final', 7, 1, 1986, 1976);
INSERT INTO public.games VALUES (1224, 2014, 'Quarter-Final', 1, 0, 1987, 1988);
INSERT INTO public.games VALUES (1225, 2014, 'Quarter-Final', 1, 0, 1985, 1972);
INSERT INTO public.games VALUES (1226, 2014, 'Quarter-Final', 2, 1, 1976, 1978);
INSERT INTO public.games VALUES (1227, 2014, 'Quarter-Final', 1, 0, 1986, 1970);
INSERT INTO public.games VALUES (1228, 2014, 'Eighth-Final', 2, 1, 1976, 1989);
INSERT INTO public.games VALUES (1229, 2014, 'Eighth-Final', 2, 0, 1978, 1977);
INSERT INTO public.games VALUES (1230, 2014, 'Eighth-Final', 2, 0, 1970, 1990);
INSERT INTO public.games VALUES (1231, 2014, 'Eighth-Final', 2, 1, 1986, 1991);
INSERT INTO public.games VALUES (1232, 2014, 'Eighth-Final', 2, 1, 1987, 1981);
INSERT INTO public.games VALUES (1233, 2014, 'Eighth-Final', 2, 1, 1988, 1992);
INSERT INTO public.games VALUES (1234, 2014, 'Eighth-Final', 1, 0, 1985, 1979);
INSERT INTO public.games VALUES (1235, 2014, 'Eighth-Final', 2, 1, 1972, 1993);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1970, 'France');
INSERT INTO public.teams VALUES (1971, 'Croatia');
INSERT INTO public.teams VALUES (1972, 'Belgium');
INSERT INTO public.teams VALUES (1973, 'England');
INSERT INTO public.teams VALUES (1974, 'Russia');
INSERT INTO public.teams VALUES (1975, 'Sweden');
INSERT INTO public.teams VALUES (1976, 'Brazil');
INSERT INTO public.teams VALUES (1977, 'Uruguay');
INSERT INTO public.teams VALUES (1978, 'Colombia');
INSERT INTO public.teams VALUES (1979, 'Switzerland');
INSERT INTO public.teams VALUES (1980, 'Japan');
INSERT INTO public.teams VALUES (1981, 'Mexico');
INSERT INTO public.teams VALUES (1982, 'Denmark');
INSERT INTO public.teams VALUES (1983, 'Spain');
INSERT INTO public.teams VALUES (1984, 'Portugal');
INSERT INTO public.teams VALUES (1985, 'Argentina');
INSERT INTO public.teams VALUES (1986, 'Germany');
INSERT INTO public.teams VALUES (1987, 'Netherlands');
INSERT INTO public.teams VALUES (1988, 'Costa Rica');
INSERT INTO public.teams VALUES (1989, 'Chile');
INSERT INTO public.teams VALUES (1990, 'Nigeria');
INSERT INTO public.teams VALUES (1991, 'Algeria');
INSERT INTO public.teams VALUES (1992, 'Greece');
INSERT INTO public.teams VALUES (1993, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1235, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1993, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

