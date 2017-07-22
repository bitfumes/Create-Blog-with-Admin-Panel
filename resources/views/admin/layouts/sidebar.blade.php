<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Sarthak Shrivastava</p>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
            <li class=""><a href="{{ route('post.index') }}"><i class="fa fa-circle-o"></i> Posts</a></li>
            <li class=""><a href="{{ route('category.index') }}"><i class="fa fa-circle-o"></i> Categories</a></li>
            <li class=""><a href="{{ route('tag.index') }}"><i class="fa fa-circle-o"></i> Tags</a></li>
            <li class=""><a href="{{ route('user.index') }}"><i class="fa fa-circle-o"></i> Users</a></li>
            <li class=""><a href="{{ route('role.index') }}"><i class="fa fa-circle-o"></i> Roles</a></li>
            <li class=""><a href="{{ route('permission.index') }}"><i class="fa fa-circle-o"></i> Permissions</a></li>
        </li>
        
        
        
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>