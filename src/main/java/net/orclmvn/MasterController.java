package net.orclmvn;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MasterController {
	
	
	@Autowired
	private MemberService memberService;


	@RequestMapping("/")
	public String memberMain(Model model) {
		List<Member> listMembers = memberService.listAll();
		model.addAttribute("listMembers", listMembers);
		return "dashboard";
	}
	
	@RequestMapping("/member")
	public String member(Model model) {
		List<Member> listMembers = memberService.listAll();
		model.addAttribute("listMembers", listMembers);
		return "member";
	}
	
	
	//start member
	
    @RequestMapping("/member/add")
    public String showNewUser(Model model) {
    	Member member = new Member();
        model.addAttribute("member", member);
         
        return "memberAdd";
    }
    
    @RequestMapping(value = "/member/save", method = RequestMethod.POST)
    public String saveMember(@ModelAttribute("member") Member member) {
        memberService.save(member);
         
        return "redirect:/member";
    }
    
    @RequestMapping("/member/delete/{id}")
    public String deleteCSR(@PathVariable(name = "id") int id) {
        memberService.delete(id);
        return "redirect:/member";       
    }
    
    @RequestMapping("/member/update/{id}")
    public ModelAndView showEditMemberPage(@PathVariable(name = "id") int id) {
        ModelAndView mav = new ModelAndView("memberUpdate");
        Member member = memberService.get(id);
        mav.addObject("member", member);
         
        return mav;
    }
    
    @RequestMapping(value = "/member/update/save", method = RequestMethod.GET)
    public String updateMember(@ModelAttribute("member") Member member) {
        memberService.save(member);
         
        return "redirect:/member";
    }
	
    //end member
    
    
    
    //start asset
	@Autowired
	private AssetService assetService;
   
    @RequestMapping("/asset")
	public String Asset(Model model) {
		List<Asset> listAssets = assetService.listAll();
		model.addAttribute("listAssets", listAssets);
		return "assets";
	}
    
    @RequestMapping("/asset/add")
    public String showNewAsset(Model model) {
    	Asset asset = new Asset();
        model.addAttribute("asset", asset);
         
        return "assetAddView";
    }
    
    @RequestMapping(value = "/asset/save", method = RequestMethod.POST)
    public String saveAsset(@ModelAttribute("asset") Asset asset) {
        assetService.save(asset);
         
        return "redirect:/asset";
    }
    
    @RequestMapping("/asset/delete/{assetid}")
    public String deleteAsset(@PathVariable(name = "assetid") int assetid) {
        assetService.delete(assetid);
        return "redirect:/asset";       
    }
    
    @RequestMapping("/asset/update/{id}")
    public ModelAndView showEditAsset(@PathVariable(name = "id") int id) {
        ModelAndView mav = new ModelAndView("assetEditView");
        Asset asset = assetService.get(id);
        mav.addObject("asset", asset);
         
        return mav;
    }
    
    @RequestMapping(value = "/asset/update/save", method = RequestMethod.GET)
    public String updateAsset(@ModelAttribute("asset") Asset asset) {
    	assetService.save(asset);
         
        return "redirect:/asset";
    }
    

//	@ModelAttribute("brands")
//	public List<String> initializeSections() {
//
//		List<String> brands = new ArrayList<String>();
//		brands.add("PANASONIC");
//		brands.add("SAMSUNG");
//		brands.add("SANYO");
//		return brands;
//	}
}

