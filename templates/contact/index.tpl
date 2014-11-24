<section data-resize>
    <section>
        <h3 class="special-header">Contact</h3>
        <div class="row">
            <div class="large-10 large-push-1 medium-12 columns">
                <div class="panel">
                    <h5 class="text-center">Lets make a phone date</h5>
                    <form name="contactform" method="post" action="/contact/send_form_email.php">
                        <div class="large-push-1 large-10">
                            <div class="row">
                                <div class="large-12 medium-12 columns">
                                    <label>Name</label>
                                    <input type="text" name="name">
                                </div>
                            </div>
                            <div class="row">
                                <div class="large-6 medium-6 columns">
                                    <label>Company Name</label>
                                    <input type="text" name="company_name">
                                </div>
                                <div class="large-6 medium-6 columns">
                                    <label>Email</label>
                                    <input type="text" name="email">
                                </div>
                            </div>
                            <div class="row">
                                <div class="large-6 medium-6 columns">
                                    <label>Phone</label>
                                    <input type="text" name="telephone">
                                </div>
                                <div class="large-6 medium-6 columns">
                                    <label>Best time to reach you</label>
                                    <select name="time">
                                        <option>Morning</option>
                                        <option>Afternoon</option>
                                        <option>Evening</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="large-12 columns">
                                    <label>How can we help you?</label>
                                    <textarea name="comments"></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="large-12 columns text-center">
                                    <input type="submit" class="button small">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</section>