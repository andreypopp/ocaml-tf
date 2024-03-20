(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_address = {
  simple_address : string prop;  (** simple_address *)
}
[@@deriving yojson_of]
(** delivery_address *)

type aws_ssmcontacts_contact_channel = {
  contact_id : string prop;  (** contact_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
  delivery_address : delivery_address list;
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact_channel *)

let delivery_address ~simple_address () : delivery_address =
  { simple_address }

let aws_ssmcontacts_contact_channel ?id ~contact_id ~name ~type_
    ~delivery_address () : aws_ssmcontacts_contact_channel =
  { contact_id; id; name; type_; delivery_address }

type t = {
  activation_status : string prop;
  arn : string prop;
  contact_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?id ~contact_id ~name ~type_ ~delivery_address __id =
  let __type = "aws_ssmcontacts_contact_channel" in
  let __attrs =
    ({
       activation_status =
         Prop.computed __type __id "activation_status";
       arn = Prop.computed __type __id "arn";
       contact_id = Prop.computed __type __id "contact_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssmcontacts_contact_channel
        (aws_ssmcontacts_contact_channel ?id ~contact_id ~name ~type_
           ~delivery_address ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~contact_id ~name ~type_
    ~delivery_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ~contact_id ~name ~type_ ~delivery_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
