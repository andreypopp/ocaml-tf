(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

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

type aws_ami_ids = {
  executable_users : string prop list option; [@option]
  id : string prop option; [@option]
  include_deprecated : bool prop option; [@option]
  name_regex : string prop option; [@option]
  owners : string prop list;
  sort_ascending : bool prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ami_ids) -> ()

let yojson_of_aws_ami_ids =
  (function
   | {
       executable_users = v_executable_users;
       id = v_id;
       include_deprecated = v_include_deprecated;
       name_regex = v_name_regex;
       owners = v_owners;
       sort_ascending = v_sort_ascending;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_sort_ascending with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sort_ascending", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_owners
         in
         ("owners", arg) :: bnds
       in
       let bnds =
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_deprecated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_deprecated", arg in
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
         match v_executable_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "executable_users", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ami_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ami_ids

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ami_ids ?executable_users ?id ?include_deprecated ?name_regex
    ?sort_ascending ?timeouts ~owners ~filter () : aws_ami_ids =
  {
    executable_users;
    id;
    include_deprecated;
    name_regex;
    owners;
    sort_ascending;
    filter;
    timeouts;
  }

type t = {
  executable_users : string list prop;
  id : string prop;
  ids : string list prop;
  include_deprecated : bool prop;
  name_regex : string prop;
  owners : string list prop;
  sort_ascending : bool prop;
}

let make ?executable_users ?id ?include_deprecated ?name_regex
    ?sort_ascending ?timeouts ~owners ~filter __id =
  let __type = "aws_ami_ids" in
  let __attrs =
    ({
       executable_users =
         Prop.computed __type __id "executable_users";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       include_deprecated =
         Prop.computed __type __id "include_deprecated";
       name_regex = Prop.computed __type __id "name_regex";
       owners = Prop.computed __type __id "owners";
       sort_ascending = Prop.computed __type __id "sort_ascending";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ami_ids
        (aws_ami_ids ?executable_users ?id ?include_deprecated
           ?name_regex ?sort_ascending ?timeouts ~owners ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?executable_users ?id ?include_deprecated
    ?name_regex ?sort_ascending ?timeouts ~owners ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?executable_users ?id ?include_deprecated ?name_regex
      ?sort_ascending ?timeouts ~owners ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
