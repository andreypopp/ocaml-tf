(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type aws_servicecatalog_provisioning_artifact = {
  accept_language : string prop option; [@option]
  active : bool prop option; [@option]
  description : string prop option; [@option]
  disable_template_validation : bool prop option; [@option]
  guidance : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  product_id : string prop;
  template_physical_id : string prop option; [@option]
  template_url : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_provisioning_artifact) -> ()

let yojson_of_aws_servicecatalog_provisioning_artifact =
  (function
   | {
       accept_language = v_accept_language;
       active = v_active;
       description = v_description;
       disable_template_validation = v_disable_template_validation;
       guidance = v_guidance;
       id = v_id;
       name = v_name;
       product_id = v_product_id;
       template_physical_id = v_template_physical_id;
       template_url = v_template_url;
       type_ = v_type_;
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_template_physical_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "template_physical_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
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
         match v_guidance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "guidance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_template_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_template_validation", arg in
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
       let bnds =
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
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
    : aws_servicecatalog_provisioning_artifact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_provisioning_artifact

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_provisioning_artifact ?accept_language ?active
    ?description ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    () : aws_servicecatalog_provisioning_artifact =
  {
    accept_language;
    active;
    description;
    disable_template_validation;
    guidance;
    id;
    name;
    product_id;
    template_physical_id;
    template_url;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  accept_language : string prop;
  active : bool prop;
  created_time : string prop;
  description : string prop;
  disable_template_validation : bool prop;
  guidance : string prop;
  id : string prop;
  name : string prop;
  product_id : string prop;
  provisioning_artifact_id : string prop;
  template_physical_id : string prop;
  template_url : string prop;
  type_ : string prop;
}

let make ?accept_language ?active ?description
    ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    __id =
  let __type = "aws_servicecatalog_provisioning_artifact" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       active = Prop.computed __type __id "active";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       disable_template_validation =
         Prop.computed __type __id "disable_template_validation";
       guidance = Prop.computed __type __id "guidance";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       product_id = Prop.computed __type __id "product_id";
       provisioning_artifact_id =
         Prop.computed __type __id "provisioning_artifact_id";
       template_physical_id =
         Prop.computed __type __id "template_physical_id";
       template_url = Prop.computed __type __id "template_url";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_provisioning_artifact
        (aws_servicecatalog_provisioning_artifact ?accept_language
           ?active ?description ?disable_template_validation
           ?guidance ?id ?name ?template_physical_id ?template_url
           ?type_ ?timeouts ~product_id ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?active ?description
    ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?active ?description
      ?disable_template_validation ?guidance ?id ?name
      ?template_physical_id ?template_url ?type_ ?timeouts
      ~product_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
