(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type resource_set = {
  description : string prop option; [@option]
  name : string prop;
  resource_set_status : string prop option; [@option]
  resource_type_list : string prop list option; [@option]
  update_token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_set) -> ()

let yojson_of_resource_set =
  (function
   | {
       description = v_description;
       name = v_name;
       resource_set_status = v_resource_set_status;
       resource_type_list = v_resource_type_list;
       update_token = v_update_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resource_type_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_set_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_set_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : resource_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_set

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type aws_fms_resource_set = {
  tags : (string * string prop) list option; [@option]
  resource_set : resource_set list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fms_resource_set) -> ()

let yojson_of_aws_fms_resource_set =
  (function
   | {
       tags = v_tags;
       resource_set = v_resource_set;
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
         if Stdlib.( = ) [] v_resource_set then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_set) v_resource_set
           in
           let bnd = "resource_set", arg in
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
       `Assoc bnds
    : aws_fms_resource_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fms_resource_set

[@@@deriving.end]

let resource_set ?description ?resource_set_status
    ?resource_type_list ?update_token ~name () : resource_set =
  {
    description;
    name;
    resource_set_status;
    resource_type_list;
    update_token;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fms_resource_set ?tags ?(resource_set = []) ?timeouts () :
    aws_fms_resource_set =
  { tags; resource_set; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?(resource_set = []) ?timeouts __id =
  let __type = "aws_fms_resource_set" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fms_resource_set
        (aws_fms_resource_set ?tags ~resource_set ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?(resource_set = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~resource_set ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
