(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_account_alternate_contact = {
  account_id : string prop option; [@option]  (** account_id *)
  alternate_contact_type : string prop;
      (** alternate_contact_type *)
  email_address : string prop;  (** email_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
  title : string prop;  (** title *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_account_alternate_contact *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_account_alternate_contact ?account_id ?id ?timeouts
    ~alternate_contact_type ~email_address ~name ~phone_number ~title
    () : aws_account_alternate_contact =
  {
    account_id;
    alternate_contact_type;
    email_address;
    id;
    name;
    phone_number;
    title;
    timeouts;
  }

type t = {
  account_id : string prop;
  alternate_contact_type : string prop;
  email_address : string prop;
  id : string prop;
  name : string prop;
  phone_number : string prop;
  title : string prop;
}

let make ?account_id ?id ?timeouts ~alternate_contact_type
    ~email_address ~name ~phone_number ~title __id =
  let __type = "aws_account_alternate_contact" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       alternate_contact_type =
         Prop.computed __type __id "alternate_contact_type";
       email_address = Prop.computed __type __id "email_address";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       phone_number = Prop.computed __type __id "phone_number";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_account_alternate_contact
        (aws_account_alternate_contact ?account_id ?id ?timeouts
           ~alternate_contact_type ~email_address ~name ~phone_number
           ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts
    ~alternate_contact_type ~email_address ~name ~phone_number ~title
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~alternate_contact_type
      ~email_address ~name ~phone_number ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
