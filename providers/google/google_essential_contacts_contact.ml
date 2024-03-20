(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_essential_contacts_contact = {
  email : string prop;
      (** The email address to send notifications to. This does not need to be a Google account. *)
  id : string prop option; [@option]  (** id *)
  language_tag : string prop;
      (** The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages. *)
  notification_category_subscriptions : string prop list;
      (** The categories of notifications that the contact will receive communications for. *)
  parent : string prop;
      (** The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id} *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_essential_contacts_contact *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_essential_contacts_contact ?id ?timeouts ~email
    ~language_tag ~notification_category_subscriptions ~parent () :
    google_essential_contacts_contact =
  {
    email;
    id;
    language_tag;
    notification_category_subscriptions;
    parent;
    timeouts;
  }

type t = {
  email : string prop;
  id : string prop;
  language_tag : string prop;
  name : string prop;
  notification_category_subscriptions : string list prop;
  parent : string prop;
}

let make ?id ?timeouts ~email ~language_tag
    ~notification_category_subscriptions ~parent __id =
  let __type = "google_essential_contacts_contact" in
  let __attrs =
    ({
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       language_tag = Prop.computed __type __id "language_tag";
       name = Prop.computed __type __id "name";
       notification_category_subscriptions =
         Prop.computed __type __id
           "notification_category_subscriptions";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_essential_contacts_contact
        (google_essential_contacts_contact ?id ?timeouts ~email
           ~language_tag ~notification_category_subscriptions ~parent
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~email ~language_tag
    ~notification_category_subscriptions ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~email ~language_tag
      ~notification_category_subscriptions ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
