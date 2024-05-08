(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_essential_contacts_contact = {
  email : string prop;
  id : string prop option; [@option]
  language_tag : string prop;
  notification_category_subscriptions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  parent : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_essential_contacts_contact) -> ()

let yojson_of_google_essential_contacts_contact =
  (function
   | {
       email = v_email;
       id = v_id;
       language_tag = v_language_tag;
       notification_category_subscriptions =
         v_notification_category_subscriptions;
       parent = v_parent;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         if [] = v_notification_category_subscriptions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_notification_category_subscriptions
           in
           let bnd = "notification_category_subscriptions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_tag in
         ("language_tag", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : google_essential_contacts_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_essential_contacts_contact

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
