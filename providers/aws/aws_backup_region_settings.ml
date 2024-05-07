(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_region_settings = {
  id : string prop option; [@option]
  resource_type_management_preference :
    (string * bool prop) list option;
      [@option]
  resource_type_opt_in_preference : (string * bool prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_region_settings) -> ()

let yojson_of_aws_backup_region_settings =
  (function
   | {
       id = v_id;
       resource_type_management_preference =
         v_resource_type_management_preference;
       resource_type_opt_in_preference =
         v_resource_type_opt_in_preference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_bool v1 in
                   `List [ v0; v1 ])
             v_resource_type_opt_in_preference
         in
         ("resource_type_opt_in_preference", arg) :: bnds
       in
       let bnds =
         match v_resource_type_management_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_bool v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "resource_type_management_preference", arg in
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
       `Assoc bnds
    : aws_backup_region_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_region_settings

[@@@deriving.end]

let aws_backup_region_settings ?id
    ?resource_type_management_preference
    ~resource_type_opt_in_preference () : aws_backup_region_settings
    =
  {
    id;
    resource_type_management_preference;
    resource_type_opt_in_preference;
  }

type t = {
  tf_name : string;
  id : string prop;
  resource_type_management_preference : (string * bool) list prop;
  resource_type_opt_in_preference : (string * bool) list prop;
}

let make ?id ?resource_type_management_preference
    ~resource_type_opt_in_preference __id =
  let __type = "aws_backup_region_settings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       resource_type_management_preference =
         Prop.computed __type __id
           "resource_type_management_preference";
       resource_type_opt_in_preference =
         Prop.computed __type __id "resource_type_opt_in_preference";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_region_settings
        (aws_backup_region_settings ?id
           ?resource_type_management_preference
           ~resource_type_opt_in_preference ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_type_management_preference
    ~resource_type_opt_in_preference __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_type_management_preference
      ~resource_type_opt_in_preference __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
