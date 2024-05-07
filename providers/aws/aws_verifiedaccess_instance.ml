(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type verified_access_trust_providers = {
  description : string prop;
  device_trust_provider_type : string prop;
  trust_provider_type : string prop;
  user_trust_provider_type : string prop;
  verified_access_trust_provider_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verified_access_trust_providers) -> ()

let yojson_of_verified_access_trust_providers =
  (function
   | {
       description = v_description;
       device_trust_provider_type = v_device_trust_provider_type;
       trust_provider_type = v_trust_provider_type;
       user_trust_provider_type = v_user_trust_provider_type;
       verified_access_trust_provider_id =
         v_verified_access_trust_provider_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verified_access_trust_provider_id
         in
         ("verified_access_trust_provider_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_user_trust_provider_type
         in
         ("user_trust_provider_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_provider_type
         in
         ("trust_provider_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_device_trust_provider_type
         in
         ("device_trust_provider_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : verified_access_trust_providers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verified_access_trust_providers

[@@@deriving.end]

type aws_verifiedaccess_instance = {
  description : string prop option; [@option]
  fips_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedaccess_instance) -> ()

let yojson_of_aws_verifiedaccess_instance =
  (function
   | {
       description = v_description;
       fips_enabled = v_fips_enabled;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_fips_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fips_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_verifiedaccess_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedaccess_instance

[@@@deriving.end]

let aws_verifiedaccess_instance ?description ?fips_enabled ?id ?tags
    ?tags_all () : aws_verifiedaccess_instance =
  { description; fips_enabled; id; tags; tags_all }

type t = {
  tf_name : string;
  creation_time : string prop;
  description : string prop;
  fips_enabled : bool prop;
  id : string prop;
  last_updated_time : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verified_access_trust_providers :
    verified_access_trust_providers list prop;
}

let make ?description ?fips_enabled ?id ?tags ?tags_all __id =
  let __type = "aws_verifiedaccess_instance" in
  let __attrs =
    ({
       tf_name = __id;
       creation_time = Prop.computed __type __id "creation_time";
       description = Prop.computed __type __id "description";
       fips_enabled = Prop.computed __type __id "fips_enabled";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       verified_access_trust_providers =
         Prop.computed __type __id "verified_access_trust_providers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_instance
        (aws_verifiedaccess_instance ?description ?fips_enabled ?id
           ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?fips_enabled ?id ?tags
    ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?fips_enabled ?id ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
