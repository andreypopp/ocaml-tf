(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_emr_security_configuration = {
  configuration : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_security_configuration) -> ()

let yojson_of_aws_emr_security_configuration =
  (function
   | {
       configuration = v_configuration;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_configuration in
         ("configuration", arg) :: bnds
       in
       `Assoc bnds
    : aws_emr_security_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_security_configuration

[@@@deriving.end]

let aws_emr_security_configuration ?id ?name ?name_prefix
    ~configuration () : aws_emr_security_configuration =
  { configuration; id; name; name_prefix }

type t = {
  configuration : string prop;
  creation_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

let make ?id ?name ?name_prefix ~configuration __id =
  let __type = "aws_emr_security_configuration" in
  let __attrs =
    ({
       configuration = Prop.computed __type __id "configuration";
       creation_date = Prop.computed __type __id "creation_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_security_configuration
        (aws_emr_security_configuration ?id ?name ?name_prefix
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
