(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dkim_signing_attributes = {
  domain_signing_private_key : string prop option; [@option]
  domain_signing_selector : string prop option; [@option]
  next_signing_key_length : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dkim_signing_attributes) -> ()

let yojson_of_dkim_signing_attributes =
  (function
   | {
       domain_signing_private_key = v_domain_signing_private_key;
       domain_signing_selector = v_domain_signing_selector;
       next_signing_key_length = v_next_signing_key_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_next_signing_key_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_signing_key_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_signing_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_signing_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_signing_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_signing_private_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dkim_signing_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dkim_signing_attributes

[@@@deriving.end]

type aws_sesv2_email_identity = {
  configuration_set_name : string prop option; [@option]
  email_identity : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  dkim_signing_attributes : dkim_signing_attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sesv2_email_identity) -> ()

let yojson_of_aws_sesv2_email_identity =
  (function
   | {
       configuration_set_name = v_configuration_set_name;
       email_identity = v_email_identity;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       dkim_signing_attributes = v_dkim_signing_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dkim_signing_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dkim_signing_attributes)
               v_dkim_signing_attributes
           in
           let bnd = "dkim_signing_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
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
       let bnds =
         match v_configuration_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_set_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sesv2_email_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sesv2_email_identity

[@@@deriving.end]

let dkim_signing_attributes ?domain_signing_private_key
    ?domain_signing_selector ?next_signing_key_length () :
    dkim_signing_attributes =
  {
    domain_signing_private_key;
    domain_signing_selector;
    next_signing_key_length;
  }

let aws_sesv2_email_identity ?configuration_set_name ?id ?tags
    ?tags_all ?(dkim_signing_attributes = []) ~email_identity () :
    aws_sesv2_email_identity =
  {
    configuration_set_name;
    email_identity;
    id;
    tags;
    tags_all;
    dkim_signing_attributes;
  }

type t = {
  tf_name : string;
  arn : string prop;
  configuration_set_name : string prop;
  email_identity : string prop;
  id : string prop;
  identity_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  verified_for_sending_status : bool prop;
}

let make ?configuration_set_name ?id ?tags ?tags_all
    ?(dkim_signing_attributes = []) ~email_identity __id =
  let __type = "aws_sesv2_email_identity" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       email_identity = Prop.computed __type __id "email_identity";
       id = Prop.computed __type __id "id";
       identity_type = Prop.computed __type __id "identity_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_sesv2_email_identity ?configuration_set_name ?id ?tags
           ?tags_all ~dkim_signing_attributes ~email_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_set_name ?id ?tags ?tags_all
    ?(dkim_signing_attributes = []) ~email_identity __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_set_name ?id ?tags ?tags_all
      ~dkim_signing_attributes ~email_identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
