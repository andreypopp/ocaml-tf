(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type delivery_address = { simple_address : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : delivery_address) -> ()

let yojson_of_delivery_address =
  (function
   | { simple_address = v_simple_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_simple_address
         in
         ("simple_address", arg) :: bnds
       in
       `Assoc bnds
    : delivery_address -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delivery_address

[@@@deriving.end]

type aws_ssmcontacts_contact_channel = {
  contact_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  delivery_address : delivery_address list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssmcontacts_contact_channel) -> ()

let yojson_of_aws_ssmcontacts_contact_channel =
  (function
   | {
       contact_id = v_contact_id;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       delivery_address = v_delivery_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_delivery_address
             v_delivery_address
         in
         ("delivery_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_contact_id in
         ("contact_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssmcontacts_contact_channel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssmcontacts_contact_channel

[@@@deriving.end]

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
