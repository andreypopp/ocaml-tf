(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_devicefarm_project = {
  default_job_timeout_minutes : float prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devicefarm_project) -> ()

let yojson_of_aws_devicefarm_project =
  (function
   | {
       default_job_timeout_minutes = v_default_job_timeout_minutes;
       id = v_id;
       name = v_name;
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
         match v_default_job_timeout_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_job_timeout_minutes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_devicefarm_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devicefarm_project

[@@@deriving.end]

let aws_devicefarm_project ?default_job_timeout_minutes ?id ?tags
    ?tags_all ~name () : aws_devicefarm_project =
  { default_job_timeout_minutes; id; name; tags; tags_all }

type t = {
  arn : string prop;
  default_job_timeout_minutes : float prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?default_job_timeout_minutes ?id ?tags ?tags_all ~name __id
    =
  let __type = "aws_devicefarm_project" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_job_timeout_minutes =
         Prop.computed __type __id "default_job_timeout_minutes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devicefarm_project
        (aws_devicefarm_project ?default_job_timeout_minutes ?id
           ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_job_timeout_minutes ?id ?tags
    ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_job_timeout_minutes ?id ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
