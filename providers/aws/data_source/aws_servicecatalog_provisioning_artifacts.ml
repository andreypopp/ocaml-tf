(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type provisioning_artifact_details = {
  active : bool prop;
  created_time : string prop;
  description : string prop;
  guidance : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : provisioning_artifact_details) -> ()

let yojson_of_provisioning_artifact_details =
  (function
   | {
       active = v_active;
       created_time = v_created_time;
       description = v_description;
       guidance = v_guidance;
       id = v_id;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_guidance in
         ("guidance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_time in
         ("created_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_active in
         ("active", arg) :: bnds
       in
       `Assoc bnds
    : provisioning_artifact_details ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_provisioning_artifact_details

[@@@deriving.end]

type aws_servicecatalog_provisioning_artifacts = {
  accept_language : string prop option; [@option]
  id : string prop option; [@option]
  product_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_provisioning_artifacts) -> ()

let yojson_of_aws_servicecatalog_provisioning_artifacts =
  (function
   | {
       accept_language = v_accept_language;
       id = v_id;
       product_id = v_product_id;
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
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
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
         match v_accept_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accept_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_provisioning_artifacts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_provisioning_artifacts

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_servicecatalog_provisioning_artifacts ?accept_language ?id
    ?timeouts ~product_id () :
    aws_servicecatalog_provisioning_artifacts =
  { accept_language; id; product_id; timeouts }

type t = {
  accept_language : string prop;
  id : string prop;
  product_id : string prop;
  provisioning_artifact_details :
    provisioning_artifact_details list prop;
}

let make ?accept_language ?id ?timeouts ~product_id __id =
  let __type = "aws_servicecatalog_provisioning_artifacts" in
  let __attrs =
    ({
       accept_language = Prop.computed __type __id "accept_language";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       provisioning_artifact_details =
         Prop.computed __type __id "provisioning_artifact_details";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_provisioning_artifacts
        (aws_servicecatalog_provisioning_artifacts ?accept_language
           ?id ?timeouts ~product_id ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?timeouts ~product_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?timeouts ~product_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
