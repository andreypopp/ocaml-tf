(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dkim_signing_attributes = {
  current_signing_key_length : string prop;
  domain_signing_private_key : string prop;
  domain_signing_selector : string prop;
  last_key_generation_timestamp : string prop;
  next_signing_key_length : string prop;
  signing_attributes_origin : string prop;
  status : string prop;
  tokens : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dkim_signing_attributes) -> ()

let yojson_of_dkim_signing_attributes =
  (function
   | {
       current_signing_key_length = v_current_signing_key_length;
       domain_signing_private_key = v_domain_signing_private_key;
       domain_signing_selector = v_domain_signing_selector;
       last_key_generation_timestamp =
         v_last_key_generation_timestamp;
       next_signing_key_length = v_next_signing_key_length;
       signing_attributes_origin = v_signing_attributes_origin;
       status = v_status;
       tokens = v_tokens;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tokens then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tokens
           in
           let bnd = "tokens", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_signing_attributes_origin
         in
         ("signing_attributes_origin", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_signing_key_length
         in
         ("next_signing_key_length", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_last_key_generation_timestamp
         in
         ("last_key_generation_timestamp", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_signing_selector
         in
         ("domain_signing_selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_domain_signing_private_key
         in
         ("domain_signing_private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_current_signing_key_length
         in
         ("current_signing_key_length", arg) :: bnds
       in
       `Assoc bnds
    : dkim_signing_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dkim_signing_attributes

[@@@deriving.end]

type aws_sesv2_email_identity = {
  email_identity : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_email_identity) -> ()

let yojson_of_aws_sesv2_email_identity =
  (function
   | { email_identity = v_email_identity; id = v_id; tags = v_tags }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_email_identity
         in
         ("email_identity", arg) :: bnds
       in
       `Assoc bnds
    : aws_sesv2_email_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_email_identity

[@@@deriving.end]

let aws_sesv2_email_identity ?id ?tags ~email_identity () :
    aws_sesv2_email_identity =
  { email_identity; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  dkim_signing_attributes : dkim_signing_attributes list prop;
  email_identity : string prop;
  id : string prop;
  identity_type : string prop;
  tags : string Tf_core.assoc prop;
  verified_for_sending_status : bool prop;
}

let make ?id ?tags ~email_identity __id =
  let __type = "aws_sesv2_email_identity" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       dkim_signing_attributes =
         Prop.computed __type __id "dkim_signing_attributes";
       email_identity = Prop.computed __type __id "email_identity";
       id = Prop.computed __type __id "id";
       identity_type = Prop.computed __type __id "identity_type";
       tags = Prop.computed __type __id "tags";
       verified_for_sending_status =
         Prop.computed __type __id "verified_for_sending_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_email_identity
        (aws_sesv2_email_identity ?id ?tags ~email_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~email_identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~email_identity __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
