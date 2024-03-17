(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_essential_contacts_contact__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_essential_contacts_contact__timeouts *)

type google_essential_contacts_contact = {
  email : string;
      (** The email address to send notifications to. This does not need to be a Google account. *)
  language_tag : string;
      (** The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages. *)
  notification_category_subscriptions : string list;
      (** The categories of notifications that the contact will receive communications for. *)
  parent : string;
      (** The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id} *)
  timeouts : google_essential_contacts_contact__timeouts option;
}
[@@deriving yojson_of]
(** google_essential_contacts_contact *)

let google_essential_contacts_contact ?timeouts ~email ~language_tag
    ~notification_category_subscriptions ~parent __resource_id =
  let __resource_type = "google_essential_contacts_contact" in
  let __resource =
    {
      email;
      language_tag;
      notification_category_subscriptions;
      parent;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_essential_contacts_contact __resource);
  ()
