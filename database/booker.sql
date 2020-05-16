--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-05-16 11:26:15

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

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 32866)
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    first_name character varying(100),
    middle_name character varying(100),
    last_name character varying(100)
);


--
-- TOC entry 206 (class 1259 OID 32864)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 206
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- TOC entry 208 (class 1259 OID 32872)
-- Name: book_author; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book_author (
    book integer NOT NULL,
    author integer NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 32926)
-- Name: book_copies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book_copies (
    book integer NOT NULL,
    library integer NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 32906)
-- Name: book_genre; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book_genre (
    book integer NOT NULL,
    genre integer NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 32889)
-- Name: book_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book_tag (
    book integer NOT NULL,
    tag integer NOT NULL
);


--
-- TOC entry 205 (class 1259 OID 32856)
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    id integer NOT NULL,
    isbn character varying(13),
    publisher integer,
    title character varying(48) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 32854)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 204
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 215 (class 1259 OID 32911)
-- Name: buildings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.buildings (
    id integer NOT NULL,
    name character varying(16) NOT NULL,
    address character varying(128),
    display_name character varying(32) NOT NULL
);


--
-- TOC entry 213 (class 1259 OID 32896)
-- Name: genres; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    genre character varying(16) NOT NULL,
    display_genre character varying(32) NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 32894)
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2944 (class 0 OID 0)
-- Dependencies: 212
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- TOC entry 217 (class 1259 OID 32920)
-- Name: libraries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.libraries (
    id integer NOT NULL,
    name character varying(16) NOT NULL,
    building integer NOT NULL,
    display_name character varying(32) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 32918)
-- Name: libraries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 216
-- Name: libraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.libraries_id_seq OWNED BY public.libraries.id;


--
-- TOC entry 203 (class 1259 OID 32846)
-- Name: publishers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publishers (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 32844)
-- Name: publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.publishers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 202
-- Name: publishers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.publishers_id_seq OWNED BY public.publishers.id;


--
-- TOC entry 210 (class 1259 OID 32879)
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    tag character varying(16) NOT NULL,
    display_tag character varying(32) NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 32877)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 209
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 2739 (class 2604 OID 32869)
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 32859)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 32899)
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 32923)
-- Name: libraries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libraries ALTER COLUMN id SET DEFAULT nextval('public.libraries_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 32849)
-- Name: publishers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishers ALTER COLUMN id SET DEFAULT nextval('public.publishers_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 32882)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 2925 (class 0 OID 32866)
-- Dependencies: 207
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.authors (id, first_name, middle_name, last_name) FROM stdin;
1	John	H	Smith
2	Henry	Bob	Smith
3	Albert	H	Johnson
4	Joanne	Harry	Johnson
5	Alice	Harry	Arvind
\.


--
-- TOC entry 2926 (class 0 OID 32872)
-- Dependencies: 208
-- Data for Name: book_author; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.book_author (book, author) FROM stdin;
\.


--
-- TOC entry 2936 (class 0 OID 32926)
-- Dependencies: 218
-- Data for Name: book_copies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.book_copies (book, library) FROM stdin;
\.


--
-- TOC entry 2932 (class 0 OID 32906)
-- Dependencies: 214
-- Data for Name: book_genre; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.book_genre (book, genre) FROM stdin;
\.


--
-- TOC entry 2929 (class 0 OID 32889)
-- Dependencies: 211
-- Data for Name: book_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.book_tag (book, tag) FROM stdin;
\.


--
-- TOC entry 2923 (class 0 OID 32856)
-- Dependencies: 205
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books (id, isbn, publisher, title) FROM stdin;
1	\N	1	The Book of Stories
10	\N	1	Amazing Tales
11	\N	1	Who guessed?
12	\N	2	Cooking with me
13	\N	2	Lets cook
14	\N	3	How to end a story well
15	\N	3	Of rocks and pieces
16	\N	1	Amazing journey
17	\N	3	How to dance
\.


--
-- TOC entry 2933 (class 0 OID 32911)
-- Dependencies: 215
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.buildings (id, name, address, display_name) FROM stdin;
\.


--
-- TOC entry 2931 (class 0 OID 32896)
-- Dependencies: 213
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.genres (id, genre, display_genre) FROM stdin;
1	fantasy	Fantasy
2	sci-fi	Science Fiction
3	science	Science
4	cooking	Cooking
\.


--
-- TOC entry 2935 (class 0 OID 32920)
-- Dependencies: 217
-- Data for Name: libraries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.libraries (id, name, building, display_name) FROM stdin;
\.


--
-- TOC entry 2921 (class 0 OID 32846)
-- Dependencies: 203
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.publishers (id, name) FROM stdin;
1	Amazing Publishment
2	Public Books
3	Boo King
4	Publish.Me
\.


--
-- TOC entry 2928 (class 0 OID 32879)
-- Dependencies: 210
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tags (id, tag, display_tag) FROM stdin;
1	xxi	XXI
2	classic	Classic
3	happy	Happy
4	deep	Deep
5	chardev	Character Development
\.


--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 206
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.authors_id_seq', 5, true);


--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 204
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.books_id_seq', 17, true);


--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 212
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genres_id_seq', 4, true);


--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 216
-- Name: libraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.libraries_id_seq', 1, false);


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 202
-- Name: publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.publishers_id_seq', 4, true);


--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 209
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tags_id_seq', 5, true);


--
-- TOC entry 2754 (class 2606 OID 32871)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 2756 (class 2606 OID 32876)
-- Name: book_author book_author_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_author
    ADD CONSTRAINT book_author_pkey PRIMARY KEY (book, author);


--
-- TOC entry 2783 (class 2606 OID 32930)
-- Name: book_copies book_copies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_copies
    ADD CONSTRAINT book_copies_pkey PRIMARY KEY (book, library);


--
-- TOC entry 2774 (class 2606 OID 32910)
-- Name: book_genre book_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_genre
    ADD CONSTRAINT book_genre_pkey PRIMARY KEY (book, genre);


--
-- TOC entry 2765 (class 2606 OID 32893)
-- Name: book_tag book_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_tag
    ADD CONSTRAINT book_tag_pkey PRIMARY KEY (book, tag);


--
-- TOC entry 2750 (class 2606 OID 32863)
-- Name: books books_isbn_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_isbn_key UNIQUE (isbn);


--
-- TOC entry 2752 (class 2606 OID 32861)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 2777 (class 2606 OID 32917)
-- Name: buildings buildings_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_name_key UNIQUE (name);


--
-- TOC entry 2779 (class 2606 OID 32915)
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);


--
-- TOC entry 2767 (class 2606 OID 32905)
-- Name: genres genres_display_genre_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_display_genre_key UNIQUE (display_genre);


--
-- TOC entry 2770 (class 2606 OID 32903)
-- Name: genres genres_genre_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_genre_key UNIQUE (genre);


--
-- TOC entry 2772 (class 2606 OID 32901)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- TOC entry 2781 (class 2606 OID 32925)
-- Name: libraries libraries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libraries
    ADD CONSTRAINT libraries_pkey PRIMARY KEY (id);


--
-- TOC entry 2745 (class 2606 OID 32853)
-- Name: publishers publishers_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_name_key UNIQUE (name);


--
-- TOC entry 2747 (class 2606 OID 32851)
-- Name: publishers publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (id);


--
-- TOC entry 2758 (class 2606 OID 32888)
-- Name: tags tags_display_tag_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_display_tag_key UNIQUE (display_tag);


--
-- TOC entry 2760 (class 2606 OID 32884)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 2763 (class 2606 OID 32886)
-- Name: tags tags_tag_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_tag_key UNIQUE (tag);


--
-- TOC entry 2748 (class 1259 OID 32982)
-- Name: books_isbn_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX books_isbn_idx ON public.books USING hash (isbn);


--
-- TOC entry 2775 (class 1259 OID 32985)
-- Name: buildings_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX buildings_name_idx ON public.buildings USING hash (name);


--
-- TOC entry 2768 (class 1259 OID 32984)
-- Name: genres_genre_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX genres_genre_idx ON public.genres USING hash (genre);


--
-- TOC entry 2743 (class 1259 OID 32981)
-- Name: publishers_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX publishers_name_idx ON public.publishers USING hash (name);


--
-- TOC entry 2761 (class 1259 OID 32983)
-- Name: tags_tag_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tags_tag_idx ON public.tags USING hash (tag);


--
-- TOC entry 2786 (class 2606 OID 32941)
-- Name: book_author book_author_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_author
    ADD CONSTRAINT book_author_author_fkey FOREIGN KEY (author) REFERENCES public.authors(id);


--
-- TOC entry 2785 (class 2606 OID 32936)
-- Name: book_author book_author_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_author
    ADD CONSTRAINT book_author_book_fkey FOREIGN KEY (book) REFERENCES public.books(id);


--
-- TOC entry 2792 (class 2606 OID 32971)
-- Name: book_copies book_copies_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_copies
    ADD CONSTRAINT book_copies_book_fkey FOREIGN KEY (book) REFERENCES public.books(id);


--
-- TOC entry 2793 (class 2606 OID 32976)
-- Name: book_copies book_copies_library_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_copies
    ADD CONSTRAINT book_copies_library_fkey FOREIGN KEY (library) REFERENCES public.libraries(id);


--
-- TOC entry 2789 (class 2606 OID 32956)
-- Name: book_genre book_genre_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_genre
    ADD CONSTRAINT book_genre_book_fkey FOREIGN KEY (book) REFERENCES public.books(id);


--
-- TOC entry 2790 (class 2606 OID 32961)
-- Name: book_genre book_genre_genre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_genre
    ADD CONSTRAINT book_genre_genre_fkey FOREIGN KEY (genre) REFERENCES public.genres(id);


--
-- TOC entry 2787 (class 2606 OID 32946)
-- Name: book_tag book_tag_book_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_tag
    ADD CONSTRAINT book_tag_book_fkey FOREIGN KEY (book) REFERENCES public.books(id);


--
-- TOC entry 2788 (class 2606 OID 32951)
-- Name: book_tag book_tag_tag_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book_tag
    ADD CONSTRAINT book_tag_tag_fkey FOREIGN KEY (tag) REFERENCES public.tags(id);


--
-- TOC entry 2784 (class 2606 OID 32931)
-- Name: books books_publisher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_publisher_fkey FOREIGN KEY (publisher) REFERENCES public.publishers(id);


--
-- TOC entry 2791 (class 2606 OID 32966)
-- Name: libraries libraries_building_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.libraries
    ADD CONSTRAINT libraries_building_fkey FOREIGN KEY (building) REFERENCES public.buildings(id);


-- Completed on 2020-05-16 11:26:15

--
-- PostgreSQL database dump complete
--

