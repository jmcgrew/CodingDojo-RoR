// Do all this when page is ready

$(document).ready(function(){

	// Load the stack descriptions in a variable called data

	var data={'lamp':'<p><mark>LAMP</mark> is an archetypal model of web service solution stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language. The LAMP components are largely interchangeable and not limited to the original selection. As a solution stack, LAMP is suitable for building dynamic web sites and web applications.</p>',
						'mean':'<p><mark>MEAN</mark> is a free and open-source JavaScript software stack for building dynamic web sites and web applications. The MEAN stack makes use of MongoDB, Express.js, Angular, and Node.js. Because all components of the MEAN stack support programs are written in JavaScript, MEAN applications can be written in one language for both server-side and client-side execution environments.</p>',
						'python':"<p><mark>Python-Django</mark> Django is a free and open-source web framework, written in Python, which follows the model-view-template (MVT) architectural pattern. It is maintained by the Django Software Foundation (DSF), an independent organization established as a 501(c) non-profit.</p><p>Django's primary goal is to ease the creation of complex, database-driven websites. Django emphasizes reusability and 'pluggability' of components, rapid development, and the principle of don't repeat yourself. Python is used throughout, even for settings files and data models. Django also provides an optional administrative create, read, update and delete interface that is generated dynamically through introspection and configured via admin models. Some well-known sites that use Django include Pinterest, Instagram, Mozilla, The Washington Times, Disqus, the Public Broadcasting Service, Bitbucket,and Nextdoor.</p>",
						'ror':"<p><mark>Ruby on Rails</mark>, or simply Rails, is a web application framework written in Ruby under the MIT License. Rails is a model-view-controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer, and HTML, CSS and JavaScript for display and user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern.</p>",
						'swift':"<p><mark>Swift</mark> is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, OS X, watchOS, tvOS, and Linux. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of extant Objective-C (ObjC) code written for Apple products. Swift is intended to be more resilient to erroneous code ('safer') than Objective-C, and more concise. It is built with the LLVM compiler framework included in Xcode 6 and later and, on platforms other than Linux, uses the Objective-C runtime library, which allows C, Objective-C, C++ and Swift code to run within one program.</p>"
	};

	// Switch border between language types

	$('#nav').on('click','.stack',function(){
		var type=$(this).attr('type');
		var name=$(this).attr('id');
		if(type==1){
			$('#compiled').removeClass('border');
			$('#scripting').addClass('border');
		}
		else if(type==2){
			$('#scripting').removeClass('border');
			$('#compiled').addClass('border');
		}
		else{
			$('#scripting').removeClass('border');
			$('#compiled').removeClass('border');
		};
		$('#mainRight').html(data[name]);
	});

	// Add new stack boxes with the input given

	$('#addBox form').submit(function(event){
		event.preventDefault();
		var newStack=$('#boxName').val();
		$('#nav').append('<div class="stack" id='+newStack+' type="3"><p class="sans">'+newStack+'</p></div>');
		data[newStack]="<p>"+newStack+"</p>";
		$('#boxName').val("");
	});

	// Add comments with date

	$('#comments form').submit(function(event){
		event.preventDefault();
		var tS = new Date();
		var comment="<p>"+$('#commentContent').val()+'<span class="greyText"> - Comment made at: '+tS+'</span></p>';
		$('#commentListing').prepend(comment);
		$('#commentContent').val("");

	});


});
