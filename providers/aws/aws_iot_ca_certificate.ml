(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type registration_config = {
  role_arn : string prop option; [@option]
  template_body : string prop option; [@option]
  template_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : registration_config) -> ()

let yojson_of_registration_config =
  (function
   | {
       role_arn = v_role_arn;
       template_body = v_template_body;
       template_name = v_template_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_template_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : registration_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registration_config

[@@@deriving.end]

type validity = { not_after : string prop; not_before : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validity) -> ()

let yojson_of_validity =
  (function
   | { not_after = v_not_after; not_before = v_not_before } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_not_before in
         ("not_before", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_not_after in
         ("not_after", arg) :: bnds
       in
       `Assoc bnds
    : validity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validity

[@@@deriving.end]

type aws_iot_ca_certificate = {
  active : bool prop;
  allow_auto_registration : bool prop;
  ca_certificate_pem : string prop;
  certificate_mode : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  verification_certificate_pem : string prop option; [@option]
  registration_config : registration_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_ca_certificate) -> ()

let yojson_of_aws_iot_ca_certificate =
  (function
   | {
       active = v_active;
       allow_auto_registration = v_allow_auto_registration;
       ca_certificate_pem = v_ca_certificate_pem;
       certificate_mode = v_certificate_mode;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       verification_certificate_pem = v_verification_certificate_pem;
       registration_config = v_registration_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_registration_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_registration_config)
               v_registration_config
           in
           let bnd = "registration_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_verification_certificate_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "verification_certificate_pem", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
         match v_certificate_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ca_certificate_pem
         in
         ("ca_certificate_pem", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_auto_registration
         in
         ("allow_auto_registration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_active in
         ("active", arg) :: bnds
       in
       `Assoc bnds
    : aws_iot_ca_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_ca_certificate

[@@@deriving.end]

let registration_config ?role_arn ?template_body ?template_name () :
    registration_config =
  { role_arn; template_body; template_name }

let aws_iot_ca_certificate ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ?(registration_config = []) ~active
    ~allow_auto_registration ~ca_certificate_pem () :
    aws_iot_ca_certificate =
  {
    active;
    allow_auto_registration;
    ca_certificate_pem;
    certificate_mode;
    id;
    tags;
    tags_all;
    verification_certificate_pem;
    registration_config;
  }

type t = {
  tf_name : string;
  active : bool prop;
  allow_auto_registration : bool prop;
  arn : string prop;
  ca_certificate_pem : string prop;
  certificate_mode : string prop;
  customer_version : float prop;
  generation_id : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  validity : validity list prop;
  verification_certificate_pem : string prop;
}

let make ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ?(registration_config = []) ~active
    ~allow_auto_registration ~ca_certificate_pem __id =
  let __type = "aws_iot_ca_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       active = Prop.computed __type __id "active";
       allow_auto_registration =
         Prop.computed __type __id "allow_auto_registration";
       arn = Prop.computed __type __id "arn";
       ca_certificate_pem =
         Prop.computed __type __id "ca_certificate_pem";
       certificate_mode =
         Prop.computed __type __id "certificate_mode";
       customer_version =
         Prop.computed __type __id "customer_version";
       generation_id = Prop.computed __type __id "generation_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       validity = Prop.computed __type __id "validity";
       verification_certificate_pem =
         Prop.computed __type __id "verification_certificate_pem";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_ca_certificate
        (aws_iot_ca_certificate ?certificate_mode ?id ?tags ?tags_all
           ?verification_certificate_pem ~registration_config ~active
           ~allow_auto_registration ~ca_certificate_pem ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_mode ?id ?tags ?tags_all
    ?verification_certificate_pem ?(registration_config = []) ~active
    ~allow_auto_registration ~ca_certificate_pem __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_mode ?id ?tags ?tags_all
      ?verification_certificate_pem ~registration_config ~active
      ~allow_auto_registration ~ca_certificate_pem __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
