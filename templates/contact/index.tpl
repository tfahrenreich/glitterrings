<section data-resize>
    <section>
        <h3 class="special-header">Contact</h3>
        <div class="row">
            <div class="large-10 large-push-1 medium-12 columns">
                <div class="panel">
                    <h5 class="text-center">Let's make a phone date</h5>
                    {if $submitted|default:false}
                        <p class="text-center">Thank you for contacting us. We will be in touch with you very soon.</p>
                    {else}
                        <form name="contactform" method="post" action="/contact/send_form_email.php" data-abide>
                            <div class="large-push-1 large-10">
                                <div class="row">
                                    <div class="large-12 medium-12 columns">
                                        <label for="name">Name</label>
                                        <input id="name" type="text" name="name" required>
                                        <small class="error">Hey, we need a name!</small>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="large-6 medium-6 columns">
                                        <label for="company-name">Company Name</label>
                                        <input id="company-name" type="text" name="company_name">
                                    </div>
                                    <div class="large-6 medium-6 columns">
                                        <label for="email">Email</label>
                                        <input id="email" type="email" name="email" required>
                                        <small class="error">We need a valid email to contact you!</small>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="large-6 medium-6 columns">
                                        <label for="phone">Phone</label>
                                        <input id="phone" type="text" name="telephone" required>
                                        <small class="error">We need your phone number!</small>

                                    </div>
                                    <div class="large-6 medium-6 columns">
                                        <label for="time">Best time to reach you</label>
                                        <select id="time" name="time">
                                            <option>Morning</option>
                                            <option>Afternoon</option>
                                            <option>Evening</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="large-12 columns">
                                        <label for="comments">How can we help you?</label>
                                        <textarea id="comments" name="comments" required></textarea>
                                        <small class="error">What are you inquiring about?</small>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="large-12 columns text-center">
                                        <input type="submit" class="button small">
                                    </div>
                                </div>
                            </div>
                        </form>
                    {/if}
                </div>
            </div>
        </div>
    </section>
</section>