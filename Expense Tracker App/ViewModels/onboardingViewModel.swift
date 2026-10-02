//
//  onboardingViewModel.swift
//  Expense Tracker App
//
//  Created by Yash Bhimani on 23/09/26.
//

struct OnboardingPage {

    let image: String
    let title: String
    let description: String
}

class OnboardingViewModel {

    let pages = [

        OnboardingPage(
            image: "onbording1",
            title: "Track Your Expenses",
            description: "Keep track of your daily spending."
        ),

        OnboardingPage(
//            image: "onboarding_manage_budgets",
            image: "onboarding2",
            title: "Manage Your Budget",
            description: "Set budgets and control your spending."
        ),

        OnboardingPage(
            image: "onboarding_understand_spending",
            title: "Understand Your Spending",
            description: "See where your money is going."
        ),

        OnboardingPage(
            image: "onboarding_save_more",
            title: "Save More Money",
            description: "Build better financial habits."
        )
    ]
}
