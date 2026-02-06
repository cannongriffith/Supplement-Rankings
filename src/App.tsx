import { BrowserRouter, Routes, Route } from 'react-router-dom';
import { Header } from './components/Header';
import { Footer } from './components/Footer';
import { Home } from './pages/Home';
import { CategoryPage } from './pages/Category';
import { ProductPage } from './pages/Product';
import { Blog } from './pages/Blog';
import { BlogPostPage } from './pages/BlogPost';
import { SearchPage } from './pages/Search';
import { About } from './pages/About';
import { AffiliateDisclosure } from './pages/AffiliateDisclosure';
import { Privacy } from './pages/Privacy';
import { Contact } from './pages/Contact';
import { DealsPage } from './pages/Deals';
import { QuizPage } from './pages/Quiz';
import { StacksPage } from './pages/Stacks';
import { ScrollToTop } from './components/ScrollToTop';

function App() {
  return (
    <BrowserRouter>
      <ScrollToTop />
      <div className="flex flex-col min-h-screen bg-white">
        <Header />
        <main className="flex-1">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/category/:slug" element={<CategoryPage />} />
            <Route path="/product/:slug" element={<ProductPage />} />
            <Route path="/blog" element={<Blog />} />
            <Route path="/blog/:slug" element={<BlogPostPage />} />
            <Route path="/search" element={<SearchPage />} />
            <Route path="/about" element={<About />} />
            <Route path="/affiliate-disclosure" element={<AffiliateDisclosure />} />
            <Route path="/privacy" element={<Privacy />} />
            <Route path="/contact" element={<Contact />} />
            <Route path="/deals" element={<DealsPage />} />
            <Route path="/quiz" element={<QuizPage />} />
            <Route path="/stacks" element={<StacksPage />} />
          </Routes>
        </main>
        <Footer />
      </div>
    </BrowserRouter>
  );
}

export default App;
